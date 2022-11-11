package com.weenalk.Servlet;

import java.io.FileOutputStream;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.weenalk.DAO.AddImageDAO;
import com.weenalk.DAO.AddressDao;
import com.weenalk.DAO.UserDao;
import com.weenalk.DBcon.DbCon;

@MultipartConfig
@WebServlet("/AddImage")
public class AddImage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddImage() {
		super();
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		RequestDispatcher dis = null;
		
		String fname=request.getParameter("First");
		String lname=request.getParameter("Last");
		String mname =request.getParameter("Middle");
		String username =request.getParameter("Username");
		String email =request.getParameter("email");
		String tel =request.getParameter("Telephone");
		String job =request.getParameter("WorkArea");
		String pass =request.getParameter("Password");
		int pcode =Integer.parseInt(request.getParameter("PostalCode"));
		String district =request.getParameter("District");
		String street =request.getParameter("street");
		String province =request.getParameter("province");
		String city =request.getParameter("City");
		String about =request.getParameter("about");
		
		
		// section of image fetching starts
		System.out.println("In do post method of Add Image servlet.");
		//used in order to fetch file names 
		Part file1 = request.getPart("propic");
		Part file2 = request.getPart("coverpic");
		//i the vaariable stores the file name o the iage submitted in the addimage.jsp page
		String propic = file1.getSubmittedFileName();
		String coverpic = file2.getSubmittedFileName();
		//prints the relevant image file name in the console
		System.out.println("Selected Image File Name : " + propic);
		System.out.println("Selected Image File Name : " + coverpic);
		//makes the image upload to the relevant path below given
		String uploadPathpro = "E:/1.SLIIT/YEAR 2/SEM 1/Java_Eclipse/WeenaLK/src/main/webapp/images/pro/"+propic; // upload																										// image
		String uploadPathcov = "E:/1.SLIIT/YEAR 2/SEM 1/Java_Eclipse/WeenaLK/src/main/webapp/images/cover/"+coverpic; // upload																										// image
		//prins the path of the upload
		System.out.println("Upload Path : " + uploadPathpro);
		System.out.println("Upload Path : " + uploadPathcov);

		// Uploading our selected image into the images folder
		try {
			//uploads to the erlevant path given in line 40 (file handling based codes)
			FileOutputStream fos1 = new FileOutputStream(uploadPathpro);
			FileOutputStream fos2 = new FileOutputStream(uploadPathcov);
			
			InputStream is1 = file1.getInputStream();
			InputStream is2 = file2.getInputStream();

			byte[] data1 = new byte[is1.available()];
			is1.read(data1);
			fos1.write(data1);
			fos1.close();
			
			byte[] data2 = new byte[is2.available()];
			is2.read(data2);
			fos2.write(data2);
			fos2.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
			try {
					String popicloc="images/pro/"+propic;
		    		String covpicloc="images/cover/"+coverpic;
		    		boolean row=false;
		    		
					AddressDao ads = new AddressDao(DbCon.getConnection());
					ads.insertAddress(province,district,street,pcode,city);
					int result =ads.lastId();
					System.out.println(result);
					
					UserDao ud = new UserDao(DbCon.getConnection());
					ud.updateuser(fname, lname, mname, username, tel, job, pass, email, coverpic, uploadPathpro, about);
					row=ud.useFull(fname, lname, mname, username, tel, job, pass, email,result,popicloc,covpicloc,about);
					
//					AddImageDAO aimg = new AddImageDAO(DbCon.getConnection());
//					int row = aimg.imgup(propic, coverpic, email);
					
					if (row== true) {
						System.out.println("Image added into database successfully.\nImage name : "+propic);
						request.setAttribute("added", "done");
						dis = request.getRequestDispatcher("adduser.jsp");
						dis.forward(request, response);
					}

					else {
						System.out.println("Failed to upload image.");
					}

			} catch (Exception e) {
					System.out.println(e);
			}
	}

}
