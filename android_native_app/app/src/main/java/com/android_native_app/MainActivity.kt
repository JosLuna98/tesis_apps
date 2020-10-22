package com.android_native_app

import android.content.Intent
import android.os.Bundle
import android.widget.Button
import androidx.appcompat.app.AppCompatActivity

class MainActivity : AppCompatActivity() {
    private lateinit var cameraButton: Button
    private lateinit var mapsButton: Button
    private lateinit var explorerButton: Button

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        cameraButton = findViewById(R.id.camera_btn)
        cameraButton.setOnClickListener {
            startActivity(Intent(this@MainActivity, CameraActivity::class.java))
        }
        mapsButton = findViewById(R.id.maps_btn)
        mapsButton.setOnClickListener {
            startActivity(Intent(this@MainActivity, MapsActivity::class.java))
        }
        explorerButton = findViewById(R.id.explorer_btn)
        explorerButton.setOnClickListener {
            startActivity(Intent(this@MainActivity, ExplorerActivity::class.java))
        }
    }

}
