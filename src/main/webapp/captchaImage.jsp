<%@ page contentType="image/jpeg" %>
<%@ page import="javax.imageio.ImageIO, java.awt.image.BufferedImage, java.awt.Graphics, java.awt.Color, java.awt.Font, java.io.OutputStream, java.util.Random" %>
<%@ page import="com.klef.jfsd.sdp.service.CaptchaGenerator"%>

<%
response.setContentType("image/jpeg");
// Generate the CAPTCHA code
String captchaCode = CaptchaGenerator.generateCaptcha(6);
session.setAttribute("captchaCode", captchaCode);
// Create a BufferedImage for the CAPTCHA image
int width = 200;
int height = 70;
BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
Graphics graphics = image.getGraphics();

// Set the background color
graphics.setColor(Color.WHITE);
graphics.fillRect(0, 0, width, height);

// Set the text color
graphics.setColor(Color.BLACK);

// Create a font and render the CAPTCHA code
Font font = new Font("Serif", Font.PLAIN, 30);
graphics.setFont(font);
graphics.drawString(captchaCode, 50, 40);

// Send the image to the client
OutputStream outputStream = response.getOutputStream();
ImageIO.write(image, "jpeg", outputStream);
outputStream.close();
%>
