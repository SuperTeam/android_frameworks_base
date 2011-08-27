/*
 * Copyright (C) 2011 The SuperTeam Developer Group
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package android.preference;

import com.android.internal.R;
import android.app.Profile;
import android.content.Context;
import android.content.Intent;
import android.preference.Preference;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.RadioButton;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class ItemCheckBoxPreference extends Preference implements
        CompoundButton.OnCheckedChangeListener, OnClickListener {
	
    final static String TAG = "ItemCheckBoxPreference";

    /**
     * @param context
     * @param attrs
     * @param defStyle
     */
    public ItemCheckBoxPreference(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        init();
    }

    /**
     * @param context
     * @param attrs
     */
    public ItemCheckBoxPreference(Context context, AttributeSet attrs) {
        super(context, attrs);
        init();
    }

    /**
     * @param context
     */
    public ItemCheckBoxPreference(Context context) {
        super(context);
        init();
    }

    private static String mSelectedKey = null;

    private static CompoundButton mCurrentChecked = null;

    private boolean mProtectFromCheckedChange = false;

    private boolean mSelectable = true;

    @Override
    public View getView(View convertView, ViewGroup parent) {
    	
    	Log.d(TAG, "Entrando a getView");
        View view = super.getView(convertView, parent);
        Log.d(TAG, view.toString());

        View widget = view.findViewById(R.id.checkbox);
        if ((widget != null) && widget instanceof CheckBox) {
        	Log.d(TAG, "Entrando al checkbox");
            CheckBox rb = (CheckBox) widget;
            if (mSelectable) {
                rb.setOnCheckedChangeListener(this);

                boolean isChecked = getKey().equals(mSelectedKey);
                if (isChecked) {
                    mCurrentChecked = rb;
                    mSelectedKey = getKey();
                }

                mProtectFromCheckedChange = true;
                rb.setChecked(isChecked);
                mProtectFromCheckedChange = false;
            } else {
                rb.setVisibility(View.GONE);
            }
        }

        widget = view.findViewById(R.id.title);
        if ((widget != null) && widget instanceof TextView) {
        	Log.d(TAG, "Entrando al title");
        	widget.setClickable(true);
        	widget.setFocusable(true);
        	TextView textView = (TextView) widget;
        	textView.setClickable(true);
            textView.setOnClickListener(this);
            Log.d(TAG, textView.getText().toString());
        }

        widget = view.findViewById(R.id.shortcut);
        if ((widget != null) && widget instanceof TextView) {
        	Log.d(TAG, "Entrando al shortcut");
        	widget.setClickable(true);
        	widget.setFocusable(true);
        	TextView textView = (TextView) widget;
        	textView.setClickable(true);
            textView.setOnClickListener(this);
            Log.d(TAG, textView.getText().toString());
        }

        return view;
    }

    private void init() {
    	Log.d(TAG, "podxboq: init");
        setLayoutResource(R.layout.list_menu_itemcheckbox_layout);
        //setTitle("Prueba por");
        setSummary("Eso es");
        super.setSu
        
    }

    public boolean isChecked() {
        return getKey().equals(mSelectedKey);
    }

    public void setChecked() {
        mSelectedKey = getKey();
    }

    public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
        Log.i(TAG, "ID: " + getKey() + " :" + isChecked);
        if (mProtectFromCheckedChange) {
            return;
        }

        if (isChecked) {
            if (mCurrentChecked != null) {
                mCurrentChecked.setChecked(false);
            }
            mCurrentChecked = buttonView;
            mSelectedKey = getKey();
            callChangeListener(mSelectedKey);
        } else {
            mCurrentChecked = null;
            mSelectedKey = null;
        }
    }
    
    @Override
    public void onClick(){
    	
    	Log.d(TAG, "onClick: " + super.toString());
    	Log.d(TAG, "onClick: " + super.getId());
    	Log.d(TAG, "onClick: " + super.getWidgetLayoutResource());
    	Log.d(TAG, "onClick: " + R.id.checkbox);
        Log.d(TAG, "onClick: " + R.id.title);
        Log.d(TAG, "onClick: " + super.getDependency());
        Log.d(TAG, "onClick: " + super.getLayoutResource());
        Log.d(TAG, "onClick: " + super.getKey());
        Log.d(TAG, "onClick: " + super.getContext().toString());
        Log.d(TAG, "onClick: " + super.getIntent().getDataString());


    }

    public void onClick(android.view.View v) {
    	Log.d(TAG, v.getId() + ": " + v.toString());
        if ((v != null) && (R.id.checkbox == v.getId())) {
        	Log.d(TAG, "Aquí ponemos el chek");
        }
        if ((v != null) && (R.id.title == v.getId())) {
        	Log.d(TAG, "Aquí ponemos el activity");
        	super.onClick();
        }
        if ((v != null) && (R.id.shortcut == v.getId())) {
        	Log.d(TAG, "Aquí ponemos el activity del sumary");
        }
    }

    public void setSelectable(boolean selectable) {
        mSelectable = selectable;
    }

    public boolean getSelectable() {
        return mSelectable;
    }
}
