package ra.enity;

public class Book {
    private String bookId;
    private String bookName;
    private int price;
    private String author;
    private boolean bookStatus;

    public Book() {
    }

    public Book(String bookId, String bookName, int price, String author, boolean bookStatus) {
        this.bookId = bookId;
        this.bookName = bookName;
        this.price = price;
        this.author = author;
        this.bookStatus = bookStatus;
    }

    public String getBookId() {
        return bookId;
    }

    public void setBookId(String bookId) {
        this.bookId = bookId;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public boolean isBookStatus() {
        return bookStatus;
    }

    public void setBookStatus(boolean bookStatus) {
        this.bookStatus = bookStatus;
    }
}
