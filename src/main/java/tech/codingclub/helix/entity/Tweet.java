package tech.codingclub.helix.entity;

public class Tweet {


    public String message;
    public Long id;
    public Long created_at;
    public Long author_id;

    public Tweet() {

    }

    public Tweet(String message, Long id, Long created_at, Long author_id) {
        this.message = message;
        this.id = id;
        this.created_at = created_at;
        this.author_id = author_id;
    }
    public String getMessage() {
        return message;
    }

    public Long getId() {
        return id;
    }

    public Long getCreated_at() {
        return created_at;
    }

    public Long getAuthor_id() {
        return author_id;
    }


}
