package navy.chris.mytube;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.*;

import com.google.android.youtube.player.YouTubeBaseActivity;
import com.google.android.youtube.player.YouTubeInitializationResult;
import com.google.android.youtube.player.YouTubePlayer;
import com.google.android.youtube.player.YouTubePlayerView;


public class MyTubeActivity extends YouTubeBaseActivity implements YouTubePlayer.OnInitializedListener{
    static final String YOUTUBE_VIDEO_ID = "1y6smkh6c-0";
    static final String YOUTUBE_API_KEY = "AIzaSyAPAgpJ2J7Hgd5msTAC-H1wLNZ5bzcpQPo";
    String video;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Intent intent = getIntent();
        Bundle bd = intent.getExtras();

        video = (String) bd.get("videoID");

        LinearLayout layout = (LinearLayout) getLayoutInflater().inflate(R.layout.activity_my_tube, null);
        setContentView(layout);


        YouTubePlayerView playerView = new YouTubePlayerView(this);
        playerView.setLayoutParams(new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
        layout.addView(playerView);
        playerView.initialize(YOUTUBE_API_KEY, this);

    }

    @Override
    public void onInitializationSuccess(YouTubePlayer.Provider provider, YouTubePlayer youTubePlayer, boolean wasRestored) {

        if(!wasRestored){
            youTubePlayer.cueVideo(video);
        }

    }

    @Override
    public void onInitializationFailure(YouTubePlayer.Provider provider, YouTubeInitializationResult youTubeInitializationResult) {
        final int REQUEST_CODE = 1;

        if(youTubeInitializationResult.isUserRecoverableError()) {
            youTubeInitializationResult.getErrorDialog(this, REQUEST_CODE).show();
        } else {
            String errorMessage = String.format("There was an error initializing the MyTube (%1$s)", youTubeInitializationResult.toString());
            Toast.makeText(this, errorMessage, Toast.LENGTH_LONG).show();
        }

    }
}
