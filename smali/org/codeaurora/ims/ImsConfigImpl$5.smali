.class Lorg/codeaurora/ims/ImsConfigImpl$5;
.super Landroid/content/BroadcastReceiver;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsConfigImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 138
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    .line 139
    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const-string p1, "onReceive: null extras"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 144
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.google.android.wfcactivation.TRY_WFC_CONNECTION"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 145
    iget-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const-string v2, "onReceive: ACTION_TRY_WFC_CONNECTION"

    invoke-static {p1, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "SUB_ID"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 148
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 149
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "TRY_STATUS"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 p2, 0x1b

    if-ne p1, v1, :cond_1

    .line 151
    const-string p1, "setwfcmode: wifi preferred"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmCi(Lorg/codeaurora/ims/ImsConfigImpl;)Lorg/codeaurora/ims/ImsSenderRxr;

    move-result-object v0

    .line 153
    invoke-static {p2}, Lorg/codeaurora/ims/ImsCallUtils;->convertImsConfigToImsConfigItem(I)I

    move-result v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v1, 0x2c

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 152
    invoke-virtual/range {v0 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->sendConfigRequest(IIZILjava/lang/String;ILandroid/os/Message;)V

    return-void

    :cond_1
    if-ne p1, v0, :cond_9

    .line 156
    const-string p1, "setwfcmode: user setting"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iget-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmImsMmTelManager(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object p1

    if-nez p1, :cond_2

    .line 158
    const-string p1, "setwfcmode: mImsMmTelManager null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 161
    :cond_2
    iget-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmCi(Lorg/codeaurora/ims/ImsConfigImpl;)Lorg/codeaurora/ims/ImsSenderRxr;

    move-result-object v0

    .line 162
    invoke-static {p2}, Lorg/codeaurora/ims/ImsCallUtils;->convertImsConfigToImsConfigItem(I)I

    move-result v2

    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmImsMmTelManager(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object p0

    .line 163
    invoke-virtual {p0}, Landroid/telephony/ims/ImsMmTelManager;->getVoWiFiModeSetting()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v1, 0x2c

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 161
    invoke-virtual/range {v0 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->sendConfigRequest(IIZILjava/lang/String;ILandroid/os/Message;)V

    return-void

    .line 172
    :cond_3
    const-string p1, "com.motorola.android.ims.ACTION_UPDATE_IMS_SERVICE_CONFIG"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v2, "phone"

    const/4 v3, -0x1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmIsCarrierConfigLoaded(Lorg/codeaurora/ims/ImsConfigImpl;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 173
    iget-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const-string v0, "onReceive: ACTION_UPDATE_IMS_SERVICE_CONFIG"

    invoke-static {p1, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 175
    iget-object p2, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {p2}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmContext(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/codeaurora/ims/ImsUtils;->getActiveSubIdForPhoneId(Landroid/content/Context;I)I

    move-result p1

    .line 176
    iget-object p2, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {p2}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmSubId(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result p2

    if-ne p1, p2, :cond_9

    .line 177
    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->updateWfcModeConfigurationsToModem()V

    return-void

    .line 184
    :cond_4
    const-string p1, "org.codeaurora.VOIP_VOPS_SSAC_STATUS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 185
    iget-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const-string v0, "onReceive: ACTION_VOPS_SSAC_STATUS"

    invoke-static {p1, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 187
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$mgetPhoneId(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v0

    if-ne p1, v0, :cond_9

    .line 188
    const-string p1, "Vops"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 189
    const-string v0, "Ssac"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 190
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmIsVopsEnabled(Lorg/codeaurora/ims/ImsConfigImpl;)Z

    move-result v0

    if-ne v0, p1, :cond_5

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmIsSsacVoiceBarred(Lorg/codeaurora/ims/ImsConfigImpl;)Z

    move-result v0

    if-eq v0, p2, :cond_9

    .line 191
    :cond_5
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fputmIsVopsEnabled(Lorg/codeaurora/ims/ImsConfigImpl;Z)V

    .line 192
    iget-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fputmIsSsacVoiceBarred(Lorg/codeaurora/ims/ImsConfigImpl;Z)V

    .line 193
    iget-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmTelephonyManager(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 194
    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmTelephonyManager(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$madjustAndSyncVoWiFiMode(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/telephony/ServiceState;)V

    return-void

    .line 202
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 204
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 205
    iget-object v4, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mBroadcastReceiver: action "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " sub = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mSubId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmSubId(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_0

    .line 210
    :cond_7
    const-string v4, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "org.codeaurora.intent.action.ESSENTIAL_RECORDS_LOADED"

    .line 211
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmSubId(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v2

    if-ne p1, v2, :cond_9

    .line 214
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "android.telephony.extra.SLOT_INDEX"

    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 216
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getSimStateForSlotIndex(I)I

    move-result p1

    if-eq p1, v0, :cond_9

    const/4 p2, 0x3

    if-eq p1, p2, :cond_9

    .line 219
    iget-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {p1, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fputmIsCarrierConfigLoaded(Lorg/codeaurora/ims/ImsConfigImpl;Z)V

    .line 220
    iget-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsConfigImpl;->updateWfcModeConfigurationsToModem()V

    .line 221
    iget-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$msyncWfcMDN(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 222
    iget-object p0, p0, Lorg/codeaurora/ims/ImsConfigImpl$5;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$msetVoiceDomainSetting(Lorg/codeaurora/ims/ImsConfigImpl;)V

    :cond_9
    :goto_0
    return-void
.end method
