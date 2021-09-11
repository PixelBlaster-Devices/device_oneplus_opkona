package org.havoc.device.DeviceSettings;

import android.annotation.TargetApi;
import android.content.Intent;
import android.service.quicksettings.TileService;

@TargetApi(24)
public class DolbyTileService extends TileService {
    @Override
    public void onDestroy() {
        super.onDestroy();
    }

    @Override
    public void onTileAdded() {
        super.onTileAdded();
    }

    @Override
    public void onTileRemoved() {
        super.onTileRemoved();
    }

    @Override
    public void onStartListening() {
        super.onStartListening();
    }

    @Override
    public void onStopListening() {
        super.onStopListening();
    }

    @Override
    public void onClick() {
        super.onClick();
        Intent DolbyAct = new Intent("android.intent.action.MAIN");
        DolbyAct.setClassName("com.oneplus.sound.tuner", "com.oneplus.sound.tuner.panoramic.DolbyPanoramicSoundActivity");
        DolbyAct.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        startActivity(DolbyAct);
    }
}
