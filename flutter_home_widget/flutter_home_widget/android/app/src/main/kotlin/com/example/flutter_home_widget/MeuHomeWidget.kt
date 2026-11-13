package com.example.flutter_home_widget

import android.appwidget.AppWidgetManager
import android.content.Context
import android.content.SharedPreferences
import android.widget.RemoteViews
import es.antonborri.home_widget.HomeWidgetProvider

class MeuHomeWidget : HomeWidgetProvider() {
    override fun onUpdate(
        context: Context,
        appWidgetManager: AppWidgetManager,
        appWidgetIds: IntArray,
        widgetData: SharedPreferences,
    ) {
        val texto = widgetData.getString("chave_texto", "Ideia") ?: "Ideia"

        appWidgetIds.forEach { widgetId ->
            val views = RemoteViews(context.packageName, R.layout.meu_home_widget)
            views.setTextViewText(R.id.widget_texto, texto)
            appWidgetManager.updateAppWidget(widgetId, views)
        }
    }
}
