.class Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
.super Ljava/lang/Object;
.source "IImsRadioIndication.java"

# interfaces
.implements Lvendor/qti/hardware/radio/ims/IImsRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mCachedHash:Ljava/lang/String;

.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 799
    iput v0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mCachedVersion:I

    .line 800
    const-string v0, "-1"

    iput-object v0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 797
    iput-object p1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 803
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    .line 807
    sget-object p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    return-object p0
.end method

.method public declared-synchronized getInterfaceHash()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1504
    :try_start_0
    const-string v0, "-1"

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1505
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1506
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1508
    :try_start_1
    sget-object v2, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1509
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1510
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1511
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1513
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 1513
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1515
    throw v2

    .line 1517
    :cond_0
    :goto_0
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public getInterfaceVersion()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1487
    iget v0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1488
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1489
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1491
    :try_start_0
    sget-object v2, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1492
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1493
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1494
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mCachedVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1496
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1497
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1496
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1497
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1498
    throw p0

    .line 1500
    :cond_0
    :goto_0
    iget p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mCachedVersion:I

    return p0
.end method

.method public onCallComposerInfoAvailable(Lvendor/qti/hardware/radio/ims/CallComposerInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1278
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1280
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1281
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1282
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x20

    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1284
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onCallComposerInfoAvailable is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 1288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1289
    throw p0
.end method

.method public onCallStateChanged([Lvendor/qti/hardware/radio/ims/CallInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 811
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 813
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 814
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 815
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, v1, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 817
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onCallStateChanged is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 822
    throw p0
.end method

.method public onCiWlanNotification(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1457
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1459
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1460
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1461
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x2c

    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1463
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onCiWlanNotification is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 1467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1468
    throw p0
.end method

.method public onConferenceCallStateCompleted()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1368
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1370
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1371
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x26

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1373
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string v1, "Method onConferenceCallStateCompleted is unimplemented."

    invoke-direct {p0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 1377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1378
    throw p0
.end method

.method public onEmergencyCallBackModeChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 915
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 917
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 918
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 919
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 925
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 921
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onEmergencyCallBackModeChanged is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 925
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 926
    throw p0
.end method

.method public onGeolocationInfoRequested(DD)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1020
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1022
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1023
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1024
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1025
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/16 p3, 0xf

    invoke-interface {p0, p3, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1031
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1027
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onGeolocationInfoRequested is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 1031
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1032
    throw p0
.end method

.method public onHandover(Lvendor/qti/hardware/radio/ims/HandoverInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 870
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 872
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 873
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 874
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 876
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onHandover is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 881
    throw p0
.end method

.method public onImsSubConfigChanged(Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1036
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1038
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1039
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1040
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x10

    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1042
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onImsSubConfigChanged is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 1046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1047
    throw p0
.end method

.method public onIncomingCallAutoRejected(Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1171
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1173
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1174
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1175
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x19

    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1177
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onIncomingCallAutoRejected is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 1181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1182
    throw p0
.end method

.method public onIncomingCallAutoRejected2(Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1442
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1444
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1445
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1446
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x2b

    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1448
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onIncomingCallAutoRejected2 is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 1452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1453
    throw p0
.end method

.method public onIncomingCallComposerCallAutoRejected(Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1293
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1295
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1296
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1297
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x21

    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1299
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onIncomingCallComposerCallAutoRejected is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 1303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1304
    throw p0
.end method

.method public onIncomingDtmfStart(Lvendor/qti/hardware/radio/ims/DtmfInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1382
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1384
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1385
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1386
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x27

    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1388
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onIncomingDtmfStart is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 1392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1393
    throw p0
.end method

.method public onIncomingDtmfStop(Lvendor/qti/hardware/radio/ims/DtmfInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1397
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1399
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1400
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1401
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x28

    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1407
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1403
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onIncomingDtmfStop is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 1407
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1408
    throw p0
.end method

.method public onIncomingSms(Lvendor/qti/hardware/radio/ims/IncomingSms;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1141
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1143
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1144
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1145
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x17

    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1147
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onIncomingSms is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 1151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1152
    throw p0
.end method

.method public onMessageWaiting(Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1005
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1007
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1008
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1009
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xe

    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1015
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1011
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onMessageWaiting is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 1015
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1016
    throw p0
.end method

.method public onModemSupportsWfcRoamingModeConfiguration(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1230
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1232
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1233
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1234
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x1d

    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1236
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onModemSupportsWfcRoamingModeConfiguration is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 1240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1241
    throw p0
.end method

.method public onModifyCall(Lvendor/qti/hardware/radio/ims/CallModifyInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 975
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 977
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 978
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 979
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xc

    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 985
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 981
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onModifyCall is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 985
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 986
    throw p0
.end method

.method public onMultiIdentityInfoPending()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1216
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1218
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1219
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x1c

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1221
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string v1, "Method onMultiIdentityInfoPending is unimplemented."

    invoke-direct {p0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 1225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1226
    throw p0
.end method

.method public onMultiIdentityRegistrationStatusChange([Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1201
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1203
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1204
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1205
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x1b

    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1211
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1207
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onMultiIdentityRegistrationStatusChange is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 1211
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1212
    throw p0
.end method

.method public onMultiSimVoiceCapabilityChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1412
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1414
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1415
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1416
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x29

    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1422
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1418
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onMultiSimVoiceCapabilityChanged is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 1422
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1423
    throw p0
.end method

.method public onParticipantStatusInfo(Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1051
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1053
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1054
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1055
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x11

    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1061
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1057
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onParticipantStatusInfo is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 1061
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1062
    throw p0
.end method

.method public onPreAlertingCallInfoAvailable(Lvendor/qti/hardware/radio/ims/PreAlertingCallInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1427
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1429
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1430
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1431
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x2a

    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1437
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1433
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onPreAlertingCallInfoAvailable is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 1437
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1438
    throw p0
.end method

.method public onRadioStateChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 900
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 902
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 903
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 904
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x7

    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 910
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 906
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onRadioStateChanged is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 910
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 911
    throw p0
.end method

.method public onRefreshConferenceInfo(Lvendor/qti/hardware/radio/ims/ConferenceInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 945
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 947
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 948
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 949
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xa

    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 955
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 951
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onRefreshConferenceInfo is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 955
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 956
    throw p0
.end method

.method public onRefreshViceInfo(Lvendor/qti/hardware/radio/ims/ViceInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 960
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 962
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 963
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 964
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xb

    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 970
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 966
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onRefreshViceInfo is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 970
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 971
    throw p0
.end method

.method public onRegistrationBlockStatus(Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1066
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1068
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1069
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1070
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x12

    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1076
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1072
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onRegistrationBlockStatus is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 1076
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1077
    throw p0
.end method

.method public onRegistrationChanged(Lvendor/qti/hardware/radio/ims/RegistrationInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 855
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 857
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 858
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 859
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 865
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 861
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onRegistrationChanged is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 865
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 866
    throw p0
.end method

.method public onRetrievingGeoLocationDataStatus(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1308
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1310
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1311
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1312
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x22

    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1314
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onRetrievingGeoLocationDataStatus is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 1318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1319
    throw p0
.end method

.method public onRing()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 826
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 828
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 829
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 835
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 831
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string v1, "Method onRing is unimplemented."

    invoke-direct {p0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 835
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 836
    throw p0
.end method

.method public onRingbackTone(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 840
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 842
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 843
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 844
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 846
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onRingbackTone is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 851
    throw p0
.end method

.method public onRttMessageReceived(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1081
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1083
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1084
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1085
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x13

    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1087
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onRttMessageReceived is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 1091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1092
    throw p0
.end method

.method public onServiceDomainChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1338
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1340
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1341
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1342
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x24

    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1344
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onServiceDomainChanged is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 1348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1349
    throw p0
.end method

.method public onServiceStatusChanged([Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 885
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 887
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 888
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 889
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x6

    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 895
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 891
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onServiceStatusChanged is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 895
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 896
    throw p0
.end method

.method public onSipDtmfReceived(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1323
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1325
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1326
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1327
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x23

    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1329
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onSipDtmfReceived is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 1333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1334
    throw p0
.end method

.method public onSmsCallBackModeChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1353
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1355
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1356
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1357
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x25

    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1359
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onSmsCallBackModeChanged is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 1363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1364
    throw p0
.end method

.method public onSmsSendStatusReport(Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1126
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1128
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1129
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1130
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x16

    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1132
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onSmsSendStatusReport is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 1136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1137
    throw p0
.end method

.method public onSrtpEncryptionStatusChanged(Lvendor/qti/hardware/radio/ims/SrtpEncryptionInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1472
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1474
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1475
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1476
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x2d

    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1478
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onSrtpEncryptionStatusChanged is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 1482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1483
    throw p0
.end method

.method public onSuppServiceNotification(Lvendor/qti/hardware/radio/ims/SuppServiceNotification;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 990
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 992
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 993
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 994
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xd

    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1000
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 996
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onSuppServiceNotification is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 1000
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1001
    throw p0
.end method

.method public onSupplementaryServiceIndication(Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1111
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1113
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1114
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1115
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x15

    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1121
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1117
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onSupplementaryServiceIndication is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 1121
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1122
    throw p0
.end method

.method public onTtyNotification(Lvendor/qti/hardware/radio/ims/TtyInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 930
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 932
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 933
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 934
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x9

    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 940
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 936
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onTtyNotification is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 940
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 941
    throw p0
.end method

.method public onUssdMessageFailed(ILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1245
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1247
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1248
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    .line 1249
    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1250
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/16 v1, 0x1e

    invoke-interface {p0, v1, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1252
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onUssdMessageFailed is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 1256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1257
    throw p0
.end method

.method public onUssdReceived(ILjava/lang/String;Lvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1261
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1263
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1264
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1265
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1266
    invoke-virtual {v0, p3, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1267
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/16 p3, 0x1f

    invoke-interface {p0, p3, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1269
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onUssdReceived is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 1273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1274
    throw p0
.end method

.method public onVoWiFiCallQuality(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1096
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1098
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1099
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1100
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x14

    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1102
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onVoWiFiCallQuality is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 1106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1107
    throw p0
.end method

.method public onVoiceInfoChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1186
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1188
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1189
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1190
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x1a

    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1196
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1192
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onVoiceInfoChanged is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 1196
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1197
    throw p0
.end method

.method public onVopsChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1156
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1158
    :try_start_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1159
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1160
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x18

    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 1166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1162
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onVopsChanged is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 1166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1167
    throw p0
.end method
