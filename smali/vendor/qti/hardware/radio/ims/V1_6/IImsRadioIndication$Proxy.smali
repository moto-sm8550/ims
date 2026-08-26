.class public final Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;
.super Ljava/lang/Object;
.source "IImsRadioIndication.java"

# interfaces
.implements Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IHwBinder;


# direct methods
.method public constructor <init>(Landroid/os/IHwBinder;)V
    .locals 0

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IHwBinder;

    iput-object p1, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 287
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1112
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1113
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1114
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeNativeHandle(Landroid/os/NativeHandle;)V

    .line 1115
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1117
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1119
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const p2, 0xf444247

    const/4 v1, 0x0

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1120
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1121
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1123
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1124
    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 302
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->interfacesEqual(Landroid/os/IHwInterface;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1224
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1225
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1227
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1229
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf524546

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1230
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1231
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1233
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1234
    invoke-virtual {p0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1237
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1238
    throw p0
.end method

.method public getHashChain()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1149
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1150
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1152
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 1154
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v1, 0xf485348

    const/4 v10, 0x0

    invoke-interface {p0, v1, v0, v2, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1155
    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1156
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1158
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v0, 0x10

    .line 1160
    invoke-virtual {v2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v3, 0x8

    .line 1162
    invoke-virtual {v0, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    mul-int/lit8 v3, v1, 0x20

    int-to-long v3, v3

    .line 1164
    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    .line 1163
    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v0

    .line 1167
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    if-ge v10, v1, :cond_0

    const/16 v3, 0x20

    .line 1169
    new-array v4, v3, [B

    mul-int/lit8 v5, v10, 0x20

    int-to-long v5, v5

    .line 1172
    invoke-virtual {v0, v5, v6, v4, v3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1175
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1181
    :cond_0
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    .line 1182
    throw p0
.end method

.method public final hashCode()I
    .locals 0

    .line 307
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->asBinder()Landroid/os/IHwBinder;

    move-result-object p0

    invoke-interface {p0}, Landroid/os/IHwBinder;->hashCode()I

    move-result p0

    return p0
.end method

.method public interfaceChain()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1093
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1094
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1096
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1098
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf43484e

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1099
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1100
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1102
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1105
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1106
    throw p0
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1130
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1131
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1133
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1135
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf445343

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1136
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1137
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 1139
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1142
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1143
    throw p0
.end method

.method public linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1203
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {p0, p1, p2, p3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result p0

    return p0
.end method

.method public notifySyspropsChanged()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1244
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1245
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1247
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1249
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf535953

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1250
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1252
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1253
    throw p0
.end method

.method public onCallComposerInfoAvailable(Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1027
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1028
    const-string v1, "vendor.qti.hardware.radio.ims@1.6::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1029
    invoke-virtual {p1, v0}, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1031
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1033
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x2d

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1034
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1036
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1037
    throw p0
.end method

.method public onCallStateChanged(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 314
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 315
    const-string v1, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 316
    invoke-static {v0, p1}, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 318
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 320
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x1

    invoke-interface {p0, v1, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 321
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 324
    throw p0
.end method

.method public onCallStateChanged_1_1(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 700
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 701
    const-string v1, "vendor.qti.hardware.radio.ims@1.1::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 702
    invoke-static {v0, p1}, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 704
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 706
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x19

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 707
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 710
    throw p0
.end method

.method public onCallStateChanged_1_2(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 717
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 718
    const-string v1, "vendor.qti.hardware.radio.ims@1.2::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 719
    invoke-static {v0, p1}, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 721
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 723
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x1a

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 724
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 726
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 727
    throw p0
.end method

.method public onCallStateChanged_1_3(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 782
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 783
    const-string v1, "vendor.qti.hardware.radio.ims@1.3::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 784
    invoke-static {v0, p1}, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 786
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 788
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x1e

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 789
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 791
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 792
    throw p0
.end method

.method public onCallStateChanged_1_4(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 862
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 863
    const-string v1, "vendor.qti.hardware.radio.ims@1.4::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 864
    invoke-static {v0, p1}, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 866
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 868
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x23

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 869
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 871
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 872
    throw p0
.end method

.method public onCallStateChanged_1_5(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 879
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 880
    const-string v1, "vendor.qti.hardware.radio.ims@1.5::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 881
    invoke-static {v0, p1}, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 883
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 885
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x24

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 886
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 888
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 889
    throw p0
.end method

.method public onCallStateChanged_1_6(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 945
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 946
    const-string v1, "vendor.qti.hardware.radio.ims@1.6::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 947
    invoke-static {v0, p1}, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 949
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 951
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x28

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 952
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 954
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 955
    throw p0
.end method

.method public onEnterEmergencyCallBackMode()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 425
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 426
    const-string v1, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 428
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 430
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 431
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 434
    throw p0
.end method

.method public onExitEmergencyCallBackMode()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 440
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 441
    const-string v1, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 443
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 445
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x9

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 446
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 449
    throw p0
.end method

.method public onGeolocationInfoRequested(DD)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 551
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 552
    const-string v1, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 553
    invoke-virtual {v0, p1, p2}, Landroid/os/HwParcel;->writeDouble(D)V

    .line 554
    invoke-virtual {v0, p3, p4}, Landroid/os/HwParcel;->writeDouble(D)V

    .line 556
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 558
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x10

    const/4 p3, 0x1

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 559
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 562
    throw p0
.end method

.method public onHandover(Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 377
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 378
    const-string v1, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p1, v0}, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 381
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 383
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 384
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 387
    throw p0
.end method

.method public onHandover_1_6(Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 993
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 994
    const-string v1, "vendor.qti.hardware.radio.ims@1.6::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 995
    invoke-virtual {p1, v0}, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 997
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 999
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x2b

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1000
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1002
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1003
    throw p0
.end method

.method public onImsSmsStatusReport(Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 733
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 734
    const-string v1, "vendor.qti.hardware.radio.ims@1.2::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 735
    invoke-virtual {p1, v0}, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;->writeToParcel(Landroid/os/HwParcel;)V

    .line 737
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 739
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x1b

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 740
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 743
    throw p0
.end method

.method public onImsSubConfigChanged(Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 568
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 569
    const-string v1, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p1, v0}, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 572
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 574
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x11

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 575
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 578
    throw p0
.end method

.method public onIncomingCallAutoRejected(Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 798
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 799
    const-string v1, "vendor.qti.hardware.radio.ims@1.3::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 800
    invoke-virtual {p1, v0}, Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 802
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 804
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x1f

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 805
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 807
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 808
    throw p0
.end method

.method public onIncomingCallAutoRejected_1_5(Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 895
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 896
    const-string v1, "vendor.qti.hardware.radio.ims@1.5::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 897
    invoke-virtual {p1, v0}, Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 899
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 901
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x25

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 902
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 904
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 905
    throw p0
.end method

.method public onIncomingCallAutoRejected_1_6(Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1060
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1061
    const-string v1, "vendor.qti.hardware.radio.ims@1.6::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1062
    invoke-virtual {p1, v0}, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1064
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1066
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x2f

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1067
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1069
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1070
    throw p0
.end method

.method public onIncomingCallComposerCallAutoRejected(Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1043
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1044
    const-string v1, "vendor.qti.hardware.radio.ims@1.6::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1045
    invoke-virtual {p1, v0}, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1046
    invoke-virtual {p2, v0}, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1048
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1050
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x2e

    const/4 v1, 0x1

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1051
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1053
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1054
    throw p0
.end method

.method public onIncomingImsSms(Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 749
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 750
    const-string v1, "vendor.qti.hardware.radio.ims@1.2::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 751
    invoke-virtual {p1, v0}, Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;->writeToParcel(Landroid/os/HwParcel;)V

    .line 753
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 755
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x1c

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 756
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 758
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 759
    throw p0
.end method

.method public onMessageWaiting(Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 535
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 536
    const-string v1, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p1, v0}, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->writeToParcel(Landroid/os/HwParcel;)V

    .line 539
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 541
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xf

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 542
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 545
    throw p0
.end method

.method public onModemSupportsWfcRoamingModeConfiguration(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 911
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 912
    const-string v1, "vendor.qti.hardware.radio.ims@1.5::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 913
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 915
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 917
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x26

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 918
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 920
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 921
    throw p0
.end method

.method public onModifyCall(Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 503
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 504
    const-string v1, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p1, v0}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 507
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 509
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xd

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 510
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 513
    throw p0
.end method

.method public onMultiIdentityInfoPending()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 847
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 848
    const-string v1, "vendor.qti.hardware.radio.ims@1.4::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 850
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 852
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x22

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 853
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 855
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 856
    throw p0
.end method

.method public onMultiIdentityRegistrationStatusChange(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 831
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 832
    const-string v1, "vendor.qti.hardware.radio.ims@1.4::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 833
    invoke-static {v0, p1}, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 835
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 837
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x21

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 838
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 840
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 841
    throw p0
.end method

.method public onParticipantStatusInfo(Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 584
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 585
    const-string v1, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p1, v0}, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 588
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 590
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x12

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 591
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 594
    throw p0
.end method

.method public onRadioStateChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 409
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 410
    const-string v1, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 413
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 415
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x7

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 416
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 419
    throw p0
.end method

.method public onRefreshConferenceInfo(Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 471
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 472
    const-string v1, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p1, v0}, Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 475
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 477
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xb

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 478
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 481
    throw p0
.end method

.method public onRefreshViceInfo(Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 487
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 488
    const-string v1, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p1, v0}, Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 491
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 493
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xc

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 494
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 497
    throw p0
.end method

.method public onRegistrationBlockStatus(ZLvendor/qti/hardware/radio/ims/V1_0/BlockStatus;ZLvendor/qti/hardware/radio/ims/V1_0/BlockStatus;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 600
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 601
    const-string v1, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 602
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 603
    invoke-virtual {p2, v0}, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 604
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 605
    invoke-virtual {p4, v0}, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 607
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 609
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x13

    const/4 p3, 0x1

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 610
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 613
    throw p0
.end method

.method public onRegistrationChanged(Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 361
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 362
    const-string v1, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p1, v0}, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 365
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 367
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 368
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 371
    throw p0
.end method

.method public onRegistrationChanged_1_6(Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 977
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 978
    const-string v1, "vendor.qti.hardware.radio.ims@1.6::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 979
    invoke-virtual {p1, v0}, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 981
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 983
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x2a

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 984
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 986
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 987
    throw p0
.end method

.method public onRetrievingGeoLocationDataStatus(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1076
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1077
    const-string v1, "vendor.qti.hardware.radio.ims@1.6::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1078
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1080
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1082
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x30

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1083
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1085
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1086
    throw p0
.end method

.method public onRing()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 330
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 331
    const-string v1, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 333
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 335
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 336
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 339
    throw p0
.end method

.method public onRingbackTone(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 345
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 346
    const-string v1, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 349
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 351
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 352
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 355
    throw p0
.end method

.method public onRttMessageReceived(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 619
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 620
    const-string v1, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 621
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 623
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 625
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x14

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 626
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 629
    throw p0
.end method

.method public onServiceStatusChanged(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 393
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 394
    const-string v1, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 395
    invoke-static {v0, p1}, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 397
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 399
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 400
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 403
    throw p0
.end method

.method public onServiceStatusChanged_1_6(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 961
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 962
    const-string v1, "vendor.qti.hardware.radio.ims@1.6::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 963
    invoke-static {v0, p1}, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 965
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 967
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x29

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 968
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 970
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 971
    throw p0
.end method

.method public onSsacStatusChangedIndication(Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 683
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 684
    const-string v1, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 685
    invoke-virtual {p1, v0}, Lvendor/qti/hardware/radio/ims/V1_0/SsacInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 687
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 689
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x18

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 690
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 693
    throw p0
.end method

.method public onSuppServiceNotification(Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 519
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 520
    const-string v1, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 521
    invoke-virtual {p1, v0}, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->writeToParcel(Landroid/os/HwParcel;)V

    .line 523
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 525
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xe

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 526
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 529
    throw p0
.end method

.method public onSupplementaryServiceIndication(Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 651
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 652
    const-string v1, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 653
    invoke-virtual {p1, v0}, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;->writeToParcel(Landroid/os/HwParcel;)V

    .line 655
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 657
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x16

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 658
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 661
    throw p0
.end method

.method public onTtyNotification(Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 455
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 456
    const-string v1, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p1, v0}, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 459
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 461
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 462
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 465
    throw p0
.end method

.method public onUssdMessageFailed(ILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 927
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 928
    const-string v1, "vendor.qti.hardware.radio.ims@1.5::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 929
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 930
    invoke-virtual {p2, v0}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 932
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 934
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x27

    const/4 v1, 0x1

    invoke-interface {p0, p2, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 935
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 937
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 938
    throw p0
.end method

.method public onUssdReceived(ILjava/lang/String;Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1009
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1010
    const-string v1, "vendor.qti.hardware.radio.ims@1.6::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1011
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1012
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {p3, v0}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1015
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 1017
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 p2, 0x2c

    const/4 p3, 0x1

    invoke-interface {p0, p2, v0, p1, p3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1018
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1020
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 1021
    throw p0
.end method

.method public onVoWiFiCallQuality(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 635
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 636
    const-string v1, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 637
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 639
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 641
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x15

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 642
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 645
    throw p0
.end method

.method public onVoiceInfoChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 814
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 815
    const-string v1, "vendor.qti.hardware.radio.ims@1.3::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 816
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 818
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 820
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x20

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 821
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 823
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 824
    throw p0
.end method

.method public onVopsChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 765
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 766
    const-string v1, "vendor.qti.hardware.radio.ims@1.2::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 767
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 769
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 771
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x1d

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 772
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 774
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 775
    throw p0
.end method

.method public onVopsStatusChangedIndication(Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 667
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 668
    const-string v1, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 669
    invoke-virtual {p1, v0}, Lvendor/qti/hardware/radio/ims/V1_0/VopsInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 671
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 673
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x17

    const/4 v2, 0x1

    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 674
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 676
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 677
    throw p0
.end method

.method public ping()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1208
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1209
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1211
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1213
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf504e47

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1214
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 1215
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1217
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1218
    throw p0
.end method

.method public setHALInstrumentation()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1188
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 1189
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1191
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 1193
    :try_start_0
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v2, 0xf494e54

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 1194
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1196
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 1197
    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 293
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "@Proxy"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 297
    :catch_0
    const-string p0, "[class or subclass of vendor.qti.hardware.radio.ims@1.6::IImsRadioIndication]@Proxy"

    return-object p0
.end method

.method public unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1259
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadioIndication$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {p0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result p0

    return p0
.end method
