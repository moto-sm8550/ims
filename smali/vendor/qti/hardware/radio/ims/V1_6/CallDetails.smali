.class public final Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;
.super Ljava/lang/Object;
.source "CallDetails.java"


# instance fields
.field public callDomain:I

.field public callSubstate:I

.field public callType:I

.field public causeCode:I

.field public extras:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public extrasLength:I

.field public localAbility:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mediaId:I

.field public peerAbility:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;",
            ">;"
        }
    .end annotation
.end field

.field public rttMode:I

.field public sipAlternateUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->callType:I

    .line 6
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->callDomain:I

    .line 7
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->extrasLength:I

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->extras:Ljava/util/ArrayList;

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->localAbility:Ljava/util/ArrayList;

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->peerAbility:Ljava/util/ArrayList;

    .line 11
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->callSubstate:I

    .line 12
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->mediaId:I

    .line 13
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->causeCode:I

    .line 14
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->rttMode:I

    .line 15
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->sipAlternateUri:Ljava/lang/String;

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;",
            ">;"
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 118
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 121
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x60

    int-to-long v5, v3

    .line 123
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 122
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 126
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 128
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;-><init>()V

    mul-int/lit8 v5, v1, 0x60

    int-to-long v5, v5

    .line 129
    invoke-virtual {v3, v4, p0, v5, v6}, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 130
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;",
            ">;)V"
        }
    .end annotation

    .line 208
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 210
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 211
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 212
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 213
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x60

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v4, v1, :cond_0

    .line 215
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;

    mul-int/lit8 v5, v4, 0x60

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 217
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 220
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 25
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;

    if-eq v2, v3, :cond_2

    return v1

    .line 28
    :cond_2
    check-cast p1, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;

    .line 29
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->callType:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->callType:I

    if-eq v2, v3, :cond_3

    return v1

    .line 32
    :cond_3
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->callDomain:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->callDomain:I

    if-eq v2, v3, :cond_4

    return v1

    .line 35
    :cond_4
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->extrasLength:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->extrasLength:I

    if-eq v2, v3, :cond_5

    return v1

    .line 38
    :cond_5
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->extras:Ljava/util/ArrayList;

    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 41
    :cond_6
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->localAbility:Ljava/util/ArrayList;

    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 44
    :cond_7
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->peerAbility:Ljava/util/ArrayList;

    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 47
    :cond_8
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->callSubstate:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->callSubstate:I

    if-eq v2, v3, :cond_9

    return v1

    .line 50
    :cond_9
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->mediaId:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->mediaId:I

    if-eq v2, v3, :cond_a

    return v1

    .line 53
    :cond_a
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->causeCode:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->causeCode:I

    if-eq v2, v3, :cond_b

    return v1

    .line 56
    :cond_b
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->rttMode:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->rttMode:I

    if-eq v2, v3, :cond_c

    return v1

    .line 59
    :cond_c
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->sipAlternateUri:Ljava/lang/String;

    iget-object p1, p1, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->sipAlternateUri:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    return v1

    :cond_d
    return v0
.end method

.method public final hashCode()I
    .locals 12

    .line 67
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->callType:I

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->callDomain:I

    .line 69
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->extrasLength:I

    .line 70
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->extras:Ljava/util/ArrayList;

    .line 71
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->localAbility:Ljava/util/ArrayList;

    .line 72
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->peerAbility:Ljava/util/ArrayList;

    .line 73
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->callSubstate:I

    .line 74
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->mediaId:I

    .line 75
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->causeCode:I

    .line 76
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->rttMode:I

    .line 77
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->sipAlternateUri:Ljava/lang/String;

    .line 78
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array/range {v1 .. v11}, [Ljava/lang/Object;

    move-result-object p0

    .line 67
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 14

    move-object/from16 v8, p2

    .line 139
    invoke-virtual/range {p2 .. p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->callType:I

    const-wide/16 v0, 0x4

    add-long v0, p3, v0

    .line 140
    invoke-virtual {v8, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->callDomain:I

    const-wide/16 v0, 0x8

    add-long v0, p3, v0

    .line 141
    invoke-virtual {v8, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->extrasLength:I

    const-wide/16 v0, 0x10

    add-long v5, p3, v0

    const-wide/16 v0, 0x18

    add-long v0, p3, v0

    .line 143
    invoke-virtual {v8, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v9

    mul-int/lit8 v0, v9, 0x10

    int-to-long v1, v0

    .line 145
    invoke-virtual {v8}, Landroid/os/HwBlob;->handle()J

    move-result-wide v3

    const/4 v7, 0x1

    move-object v0, p1

    .line 144
    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v10

    .line 148
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v11, 0x0

    move v12, v11

    :goto_0
    if-ge v12, v9, :cond_0

    .line 150
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    mul-int/lit8 v0, v12, 0x10

    int-to-long v1, v0

    .line 151
    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v13

    .line 154
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v1, v1

    .line 155
    invoke-virtual {v10}, Landroid/os/HwBlob;->handle()J

    move-result-wide v3

    int-to-long v5, v0

    const/4 v7, 0x0

    move-object v0, p1

    .line 153
    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 158
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x20

    add-long v5, p3, v0

    const-wide/16 v0, 0x28

    add-long v0, p3, v0

    .line 162
    invoke-virtual {v8, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v9

    mul-int/lit8 v0, v9, 0x40

    int-to-long v1, v0

    .line 164
    invoke-virtual {v8}, Landroid/os/HwBlob;->handle()J

    move-result-wide v3

    const/4 v7, 0x1

    move-object v0, p1

    .line 163
    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 167
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move v2, v11

    :goto_1
    if-ge v2, v9, :cond_1

    .line 169
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;-><init>()V

    mul-int/lit8 v4, v2, 0x40

    int-to-long v4, v4

    .line 170
    invoke-virtual {v3, p1, v1, v4, v5}, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 171
    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x30

    add-long v5, p3, v1

    const-wide/16 v1, 0x38

    add-long v1, p3, v1

    .line 175
    invoke-virtual {v8, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v9

    mul-int/lit8 v1, v9, 0x40

    int-to-long v1, v1

    .line 177
    invoke-virtual {v8}, Landroid/os/HwBlob;->handle()J

    move-result-wide v3

    const/4 v7, 0x1

    move-object v0, p1

    .line 176
    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 180
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :goto_2
    if-ge v11, v9, :cond_2

    .line 182
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;-><init>()V

    mul-int/lit8 v3, v11, 0x40

    int-to-long v3, v3

    .line 183
    invoke-virtual {v2, p1, v1, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 184
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    const-wide/16 v1, 0x40

    add-long v1, p3, v1

    .line 187
    invoke-virtual {v8, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->callSubstate:I

    const-wide/16 v1, 0x44

    add-long v1, p3, v1

    .line 188
    invoke-virtual {v8, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->mediaId:I

    const-wide/16 v1, 0x48

    add-long v1, p3, v1

    .line 189
    invoke-virtual {v8, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->causeCode:I

    const-wide/16 v1, 0x4c

    add-long v1, p3, v1

    .line 190
    invoke-virtual {v8, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->rttMode:I

    const-wide/16 v1, 0x50

    add-long v5, p3, v1

    .line 191
    invoke-virtual {v8, v5, v6}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->sipAlternateUri:Ljava/lang/String;

    .line 194
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length p0, p0

    add-int/lit8 p0, p0, 0x1

    int-to-long v1, p0

    .line 195
    invoke-virtual {v8}, Landroid/os/HwBlob;->handle()J

    move-result-wide v3

    const/4 v7, 0x0

    move-object v0, p1

    .line 193
    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0x60

    .line 112
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 113
    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{.callType = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->callType:I

    invoke-static {v1}, Lvendor/qti/hardware/radio/ims/V1_6/CallType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string v1, ", .callDomain = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->callDomain:I

    invoke-static {v1}, Lvendor/qti/hardware/radio/ims/V1_0/CallDomain;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string v1, ", .extrasLength = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->extrasLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    const-string v1, ", .extras = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    const-string v1, ", .localAbility = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    const-string v1, ", .peerAbility = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    const-string v1, ", .callSubstate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->callSubstate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    const-string v1, ", .mediaId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->mediaId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, ", .causeCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->causeCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, ", .rttMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->rttMode:I

    invoke-static {v1}, Lvendor/qti/hardware/radio/ims/V1_0/RttMode;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, ", .sipAlternateUri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->sipAlternateUri:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 9

    .line 225
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->callType:I

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    .line 226
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->callDomain:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    .line 227
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->extrasLength:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 229
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x10

    add-long/2addr v1, p2

    const-wide/16 v3, 0x18

    add-long/2addr v3, p2

    .line 230
    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0x1c

    add-long/2addr v3, p2

    const/4 v5, 0x0

    .line 231
    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 232
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v0, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    move v4, v5

    :goto_0
    if-ge v4, v0, :cond_0

    mul-int/lit8 v6, v4, 0x10

    int-to-long v6, v6

    .line 234
    iget-object v8, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v3, v6, v7, v8}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 239
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x20

    add-long/2addr v1, p2

    const-wide/16 v3, 0x28

    add-long/2addr v3, p2

    .line 240
    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0x2c

    add-long/2addr v3, p2

    .line 241
    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 242
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v0, 0x40

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    move v4, v5

    :goto_1
    if-ge v4, v0, :cond_1

    .line 244
    iget-object v6, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;

    mul-int/lit8 v7, v4, 0x40

    int-to-long v7, v7

    invoke-virtual {v6, v3, v7, v8}, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 246
    :cond_1
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 249
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x30

    add-long/2addr v1, p2

    const-wide/16 v3, 0x38

    add-long/2addr v3, p2

    .line 250
    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0x3c

    add-long/2addr v3, p2

    .line 251
    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 252
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v0, 0x40

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    :goto_2
    if-ge v5, v0, :cond_2

    .line 254
    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;

    mul-int/lit8 v6, v5, 0x40

    int-to-long v6, v6

    invoke-virtual {v4, v3, v6, v7}, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 256
    :cond_2
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    const-wide/16 v0, 0x40

    add-long/2addr v0, p2

    .line 258
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->callSubstate:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x44

    add-long/2addr v0, p2

    .line 259
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->mediaId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x48

    add-long/2addr v0, p2

    .line 260
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->causeCode:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x4c

    add-long/2addr v0, p2

    .line 261
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->rttMode:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x50

    add-long/2addr p2, v0

    .line 262
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->sipAlternateUri:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 201
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x60

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 202
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 203
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
