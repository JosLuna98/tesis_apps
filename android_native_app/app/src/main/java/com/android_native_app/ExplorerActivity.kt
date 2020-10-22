package com.android_native_app

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.TextView

class ExplorerActivity : AppCompatActivity() {
    private val REQUEST_CODE = 111
    private lateinit var fileUri: TextView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_explorer)
        fileUri = findViewById(R.id.selectedFile_tv)
        val intent = Intent()
            .setType("*/*")
            .setAction(Intent.ACTION_GET_CONTENT)
        startActivityForResult(Intent.createChooser(intent, "Select a file"), REQUEST_CODE)
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        super.onActivityResult(requestCode, resultCode, data)

        if (requestCode == REQUEST_CODE && resultCode == RESULT_OK) {
            lateinit var selectedFile: String
            if(data != null) selectedFile = data.data.toString() else "Nada seleccionado"//The uri with the location of the file
            fileUri.text = selectedFile;
        }
    }

}