package com.wanderbon.clearcahce;

import android.os.AsyncTask;

public class ClearCacheAsyncTask extends AsyncTask<Integer,Integer,String> {
    public ClearCacheModule myclearCacheModule = null;
    public ClearCacheAsyncTask(ClearCacheModule clearCacheModule) {
        super();
        this.myclearCacheModule = clearCacheModule;
    }

    @Override
    protected void onPreExecute() {
        super.onPreExecute();
    }

    @Override
    protected void onPostExecute(String s) {
        super.onPostExecute(s);
    }

    @Override
    protected String doInBackground(Integer... params) {
        myclearCacheModule.clearCache();
        return null;
    }


}