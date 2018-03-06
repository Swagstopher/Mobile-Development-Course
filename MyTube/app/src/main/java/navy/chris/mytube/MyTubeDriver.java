package navy.chris.mytube;

/**
 * Created by chrisnavy on 12/12/16.
 */

import android.content.Context;
import android.util.Log;

import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpRequestInitializer;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.api.services.youtube.YouTube;
import com.google.api.services.youtube.model.SearchListResponse;
import com.google.api.services.youtube.model.SearchResult;
import com.google.api.services.youtube.model.*;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class MyTubeDriver {

    private static final String PROPERTIES_FILENAME = "youtube.properties";

    private static final long NUMBER_OF_VIDEOS_RETURNED = 25;

    private static final String YOUTUBE_KEY = "AIzaSyAPAgpJ2J7Hgd5msTAC-H1wLNZ5bzcpQPo";

    private YouTube youtube;
    private YouTube.Search.List query;

/*
    //content.getString(R.string.app_name)

    public MyTubeDriver(Context content){
        youtube = new YouTube.Builder(new NetHttpTransport(),
                new JacksonFactory(), new HttpRequestInitializer() {
            @Override
            public void initialize(HttpRequest hr) throws IOException {}
        }).setApplicationName(content.getString(R.string.app_name)).build();

        try{
            query = youtube.search().list("id,snippet");
            query.setKey(YOUTUBE_KEY);
            query.setType("video");
            query.setFields("items(id/videoId,snippet/title,snippet/thumbnails/default/url,snippet/publishedAt)");
        }catch(IOException e){
            Log.d("YC", "Could not initialize: "+e);
        }
    }

    public List<MyTubeVideo> search(String keywords){
        query.setQ(keywords);
        try{
            SearchListResponse response = query.execute();
            List<SearchResult> results = response.getItems();

            List<MyTubeVideo> items = new ArrayList<MyTubeVideo>();
            for(SearchResult result:results){
                MyTubeVideo item = new MyTubeVideo(
                        result.getSnippet().getTitle(),
                        result.getSnippet().getThumbnails().getDefault().getUrl(),
                        result.getSnippet().getPublishedAt().toString(),
                        result.getId().getVideoId()
                        );
                items.add(item);
            }
            return items;
        }catch(IOException e){
            Log.d("YC", "Could not search: "+e);
            return null;
        }
    }
*/
}
