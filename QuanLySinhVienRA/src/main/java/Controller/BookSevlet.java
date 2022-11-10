package Controller;

import ra.enity.Book;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "BookSevlet", value = "/BookSevlet")
public class BookSevlet extends HttpServlet {
    private static List<Book> listBooks = new ArrayList<>();
    private static List<Book> newBook = new ArrayList<>();

    @Override
    public void init() throws ServletException {
        Book b1 = new Book("01", "Toan Hoc", 10000, "HungBeoo", true);
        Book b2 = new Book("02", "Ngu Van", 12000, "HungBeoo", true);
        Book b3 = new Book("03", "Lich Su", 15000, "HungBeoo", true);
        Book b4 = new Book("04", "Hoa Hoc", 13000, "HungBeoo", true);
        Book b5 = new Book("05", "Tin Hoc", 17000, "HungBeoo", true);
        listBooks.add(b1);
        listBooks.add(b2);
        listBooks.add(b3);
        listBooks.add(b4);
        listBooks.add(b5);

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action != null && action.equals("update")) {
            String bookIdUpdate = request.getParameter("bookId");
            for (Book b : listBooks) {
                if (b.getBookId().equals(bookIdUpdate)) {
                    request.setAttribute("updateBook", b);
                    request.getRequestDispatcher("updateBook.jsp").forward(request, response);
                    break;
                }
            }
        } else if (action != null && action.equals("delete")) {
            String bookID = request.getParameter("bookId");
            for (Book b : listBooks) {
                if (b.getBookId().equals(bookID)) {
                    listBooks.remove(b);
                    break;
                }
            }
            getAllBook(request, response);
        } else {
            getAllBook(request, response);
        }
    }

    public void getAllBook(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("listBook", listBooks);
        request.getRequestDispatcher("book.jsp").forward(request, response);

    }

    public void getSearchBook(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("listBook", newBook);
        request.getRequestDispatcher("book.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");

        if (action.equals("Add")) {
            String bookID = request.getParameter("bookId");
            String bookName = request.getParameter("bookName");
            int price = Integer.parseInt(request.getParameter("price"));
            String author = request.getParameter("author");
            boolean bookStatus = Boolean.parseBoolean(request.getParameter("Status"));
            Book b = new Book(bookID, bookName, price, author, bookStatus);
            listBooks.add(b);

        } else if (action.equals("Update")) {
            String bookID = request.getParameter("bookId");
            String bookName = request.getParameter("bookName");
            int price = Integer.parseInt(request.getParameter("price"));
            String author = request.getParameter("author");
            boolean bookStatus = Boolean.parseBoolean(request.getParameter("bookStatus"));
            for (Book b : listBooks) {
                if (b.getBookId().equals(bookID)) {
                    b.setBookName(bookName);
                    b.setAuthor(author);
                    b.setPrice(price);
                    b.setBookStatus(bookStatus);
                    break;
                }
            }
        } else if (action.equals("Search")) {
            newBook.clear();
            String bookName = request.getParameter("bookName");
            for (Book b : listBooks) {
                if (b.getBookName().contains(bookName))
                    newBook.add(b);
            }
            getSearchBook(request, response);
        }
        getAllBook(request, response);
    }
}
