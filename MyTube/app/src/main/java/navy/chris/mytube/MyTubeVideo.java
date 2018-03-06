package navy.chris.mytube;

/**
 * Created by chrisnavy on 12/12/16.
 */

public class MyTubeVideo {
    private String title;
    private String thumbnailURL;
    private String datePublished;
    private String id;
    private String views;

    MyTubeVideo(String t, String th, String dp, String i){
        title = t;
        thumbnailURL = th;
        datePublished = dp;
        id = i;
        //views = v;
    }

    public String getDatePublished(){
        return datePublished;
    }

    public String getViews(){
        return views;
    }

    public String getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getThumbnailURL() {
        return thumbnailURL;
    }








}
