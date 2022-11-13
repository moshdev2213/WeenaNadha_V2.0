package com.weenalk.Servlet;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.weenalk.DAO.ProductDao;
import com.weenalk.DBcon.DbCon;

@MultipartConfig
@WebServlet("/AddProduct")
public class AddProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		String stat = request.getParameter("stat");
		
		try {
			ProductDao pd = new ProductDao(DbCon.getConnection());
			if(stat.equals("del"))  {
				int inresult= pd.deleteprod(id);
				if(inresult>0) {
					
					System.out.println("DONE");
					request.setAttribute("delatec", "Success");
					response.sendRedirect("products_table.jsp");
				
				}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String stat = request.getParameter("stat");
		String id = request.getParameter("id");
		
		String name=request.getParameter("name");
		String design=request.getParameter("design");
		String deal =request.getParameter("deal");
		String warranty =request.getParameter("warranty");
		
		Double mrp =Double.parseDouble(request.getParameter("mrp"));
		Double price =Double.parseDouble(request.getParameter("price"));
		
		int weight =Integer.parseInt(request.getParameter("weight"));
		int stock =Integer.parseInt(request.getParameter("stock"));
		int category =Integer.parseInt(request.getParameter("category"));
		int shipping =Integer.parseInt(request.getParameter("shipping"));
		
		String color =request.getParameter("color");
		String about =request.getParameter("about");
		
		
		// section of image fetching starts
				System.out.println("In do post method of Add Image servlet.");
				//used in order to fetch file names 
				Part file1 = request.getPart("img");
				//i the vaariable stores the file name o the iage submitted in the addimage.jsp page
				String propic = file1.getSubmittedFileName();
				//prints the relevant image file name in the console
				System.out.println("Selected Image File Name : " + propic);
				//makes the image upload to the relevant path below given
				String uploadPathpro = "E:/1.SLIIT/YEAR 2/SEM 1/Java_Eclipse/WeenaLK/src/main/webapp/images/products/IMG/"+propic; // upload																										// image
																											
				//prins the path of the upload
				System.out.println("Upload Path : " + uploadPathpro);
		// Uploading our selected image into the images folder
		try {
					//uploads to the erlevant path given in line 40 (file handling based codes)
					FileOutputStream fos1 = new FileOutputStream(uploadPathpro);
					
					InputStream is1 = file1.getInputStream();

					byte[] data1 = new byte[is1.available()];
					is1.read(data1);
					fos1.write(data1);
					fos1.close();

		} catch (Exception e) {
					e.printStackTrace();
		}
		
		try {
			String popicloc="IMG/"+propic;
			System.out.println("after");
			ProductDao pd = new ProductDao(DbCon.getConnection());
			System.out.println(stat);
			//the dashboard section upadte
			if(stat.equals("in"))  {
				int upresult=pd.InsertProduct(name,about,design,weight,category,color,stock,price,deal,mrp,shipping,warranty,popicloc);
				if(upresult>0) {
				System.out.println("DONE");
				request.setAttribute("updatec", "Success");
				response.sendRedirect("products_table.jsp");
				
				
				}
			}
			//the dashboard section insert
			else if(stat.equals("up"))  {
				int inresult= pd.updateProduct(name,about,design,weight,category,color,stock,price,deal,mrp,shipping,warranty,popicloc,id);
				if(inresult>0) {
					
					System.out.println("DONE");
					request.setAttribute("inatec", "Success");
					response.sendRedirect("products_table.jsp");
				
				}
			}
			else if(stat.equals("del"))  {
				int inresult= pd.deleteprod(id);
				if(inresult>0) {
					
					System.out.println("DONE");
					request.setAttribute("delatec", "Success");
					response.sendRedirect("products_table.jsp");
				
				}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		doGet(request, response);
	}

}
