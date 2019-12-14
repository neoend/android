```java

    @Override
    public void onBackPressed() {
        Log.v(TAG, "back key~~~");
    }

    @Override
    protected void onPause() {
        super.onPause();
        Log.v(TAG, "menu key~~~");
        ActivityManager activityManager = (ActivityManager) getApplicationContext()
                .getSystemService(Context.ACTIVITY_SERVICE);
        activityManager.moveTaskToFront(getTaskId(), 0);
    }

    @Override
    protected void onStop() {
        super.onStop();
        end();
    }

    public void end() {
        moveTaskToBack(true);       // 태스크를 백그라운드로 이동
        finishAndRemoveTask();				 // 액티비티 종료 + 태스크 리스트에서 지우기
        android.os.Process.killProcess(android.os.Process.myPid());	// 앱 프로세스 종료
    }

    @Override
    public boolean dispatchKeyEvent(KeyEvent event) {
        if (event.getAction() == KeyEvent.ACTION_DOWN) {
            switch (event.getKeyCode()) {
                case KeyEvent.KEYCODE_POWER:
                    Log.v(TAG, "KEYCODE_POWER");
                    end();
                    break;
            }
        }
        return super.dispatchKeyEvent(event);
    }

```

### test
