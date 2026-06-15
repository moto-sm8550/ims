.class public final Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;
.super Ljava/lang/Object;
.source "DialRequest.java"


# instance fields
.field public address:Ljava/lang/String;

.field public callDetails:Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;

.field public clirMode:I

.field public hasCallDetails:Z

.field public hasIsCallPull:Z

.field public hasIsConferenceUri:Z

.field public hasIsEncrypted:Z

.field public isCallPull:Z

.field public isConferenceUri:Z

.field public isEncrypted:Z

.field public multiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

.field public presentation:I

.field public redialInfo:Lvendor/qti/hardware/radio/ims/V1_6/RedialInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->address:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->clirMode:I

    .line 7
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->presentation:I

    .line 8
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasCallDetails:Z

    .line 9
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;

    .line 10
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasIsConferenceUri:Z

    .line 11
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->isConferenceUri:Z

    .line 12
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasIsCallPull:Z

    .line 13
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->isCallPull:Z

    .line 14
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasIsEncrypted:Z

    .line 15
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->isEncrypted:Z

    .line 16
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->multiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    .line 23
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_6/RedialInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_6/RedialInfo;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->redialInfo:Lvendor/qti/hardware/radio/ims/V1_6/RedialInfo;

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
            "Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;",
            ">;"
        }
    .end annotation

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 138
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 141
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit16 v3, v2, 0xa8

    int-to-long v5, v3

    .line 143
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 142
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 146
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 148
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;-><init>()V

    mul-int/lit16 v5, v1, 0xa8

    int-to-long v5, v5

    .line 149
    invoke-virtual {v3, v4, p0, v5, v6}, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 150
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
            "Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;",
            ">;)V"
        }
    .end annotation

    .line 188
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 190
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 191
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 192
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 193
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit16 v3, v1, 0xa8

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v4, v1, :cond_0

    .line 195
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;

    mul-int/lit16 v5, v4, 0xa8

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 197
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 200
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

    .line 33
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;

    if-eq v2, v3, :cond_2

    return v1

    .line 36
    :cond_2
    check-cast p1, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;

    .line 37
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->address:Ljava/lang/String;

    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->address:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 40
    :cond_3
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->clirMode:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->clirMode:I

    if-eq v2, v3, :cond_4

    return v1

    .line 43
    :cond_4
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->presentation:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->presentation:I

    if-eq v2, v3, :cond_5

    return v1

    .line 46
    :cond_5
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasCallDetails:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasCallDetails:Z

    if-eq v2, v3, :cond_6

    return v1

    .line 49
    :cond_6
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;

    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 52
    :cond_7
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasIsConferenceUri:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasIsConferenceUri:Z

    if-eq v2, v3, :cond_8

    return v1

    .line 55
    :cond_8
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->isConferenceUri:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->isConferenceUri:Z

    if-eq v2, v3, :cond_9

    return v1

    .line 58
    :cond_9
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasIsCallPull:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasIsCallPull:Z

    if-eq v2, v3, :cond_a

    return v1

    .line 61
    :cond_a
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->isCallPull:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->isCallPull:Z

    if-eq v2, v3, :cond_b

    return v1

    .line 64
    :cond_b
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasIsEncrypted:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasIsEncrypted:Z

    if-eq v2, v3, :cond_c

    return v1

    .line 67
    :cond_c
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->isEncrypted:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->isEncrypted:Z

    if-eq v2, v3, :cond_d

    return v1

    .line 70
    :cond_d
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->multiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->multiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 73
    :cond_e
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->redialInfo:Lvendor/qti/hardware/radio/ims/V1_6/RedialInfo;

    iget-object p1, p1, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->redialInfo:Lvendor/qti/hardware/radio/ims/V1_6/RedialInfo;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    return v1

    :cond_f
    return v0
.end method

.method public final hashCode()I
    .locals 14

    .line 81
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->address:Ljava/lang/String;

    .line 82
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->clirMode:I

    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->presentation:I

    .line 84
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasCallDetails:Z

    .line 85
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;

    .line 86
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasIsConferenceUri:Z

    .line 87
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->isConferenceUri:Z

    .line 88
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasIsCallPull:Z

    .line 89
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->isCallPull:Z

    .line 90
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasIsEncrypted:Z

    .line 91
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->isEncrypted:Z

    .line 92
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->multiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    .line 93
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->redialInfo:Lvendor/qti/hardware/radio/ims/V1_6/RedialInfo;

    .line 94
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array/range {v1 .. v13}, [Ljava/lang/Object;

    move-result-object p0

    .line 81
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 9

    .line 159
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->address:Ljava/lang/String;

    .line 162
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v2, v0

    .line 163
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    const/4 v8, 0x0

    move-object v1, p1

    move-wide v6, p3

    .line 161
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    const-wide/16 p3, 0x10

    add-long/2addr p3, v6

    .line 166
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->clirMode:I

    const-wide/16 p3, 0x14

    add-long/2addr p3, v6

    .line 167
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->presentation:I

    const-wide/16 p3, 0x18

    add-long/2addr p3, v6

    .line 168
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasCallDetails:Z

    .line 169
    iget-object p1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;

    const-wide/16 p3, 0x20

    add-long/2addr p3, v6

    invoke-virtual {p1, v1, p2, p3, p4}, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 p3, 0x80

    add-long/2addr p3, v6

    .line 170
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasIsConferenceUri:Z

    const-wide/16 p3, 0x81

    add-long/2addr p3, v6

    .line 171
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->isConferenceUri:Z

    const-wide/16 p3, 0x82

    add-long/2addr p3, v6

    .line 172
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasIsCallPull:Z

    const-wide/16 p3, 0x83

    add-long/2addr p3, v6

    .line 173
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->isCallPull:Z

    const-wide/16 p3, 0x84

    add-long/2addr p3, v6

    .line 174
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasIsEncrypted:Z

    const-wide/16 p3, 0x85

    add-long/2addr p3, v6

    .line 175
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->isEncrypted:Z

    .line 176
    iget-object p1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->multiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    const-wide/16 p3, 0x88

    add-long/2addr p3, v6

    invoke-virtual {p1, v1, p2, p3, p4}, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 177
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->redialInfo:Lvendor/qti/hardware/radio/ims/V1_6/RedialInfo;

    const-wide/16 p3, 0xa0

    add-long/2addr p3, v6

    invoke-virtual {p0, v1, p2, p3, p4}, Lvendor/qti/hardware/radio/ims/V1_6/RedialInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0xa8

    .line 132
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 133
    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{.address = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, ", .clirMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->clirMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, ", .presentation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->presentation:I

    invoke-static {v1}, Lvendor/qti/hardware/radio/ims/V1_0/IpPresentation;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, ", .hasCallDetails = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasCallDetails:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 109
    const-string v1, ", .callDetails = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, ", .hasIsConferenceUri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasIsConferenceUri:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, ", .isConferenceUri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->isConferenceUri:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 115
    const-string v1, ", .hasIsCallPull = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasIsCallPull:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, ", .isCallPull = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->isCallPull:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 119
    const-string v1, ", .hasIsEncrypted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasIsEncrypted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 121
    const-string v1, ", .isEncrypted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->isEncrypted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, ", .multiLineInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->multiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    const-string v1, ", .redialInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->redialInfo:Lvendor/qti/hardware/radio/ims/V1_6/RedialInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3

    .line 205
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->address:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    .line 206
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->clirMode:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x14

    add-long/2addr v0, p2

    .line 207
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->presentation:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    .line 208
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasCallDetails:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 209
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;

    const-wide/16 v1, 0x20

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    const-wide/16 v0, 0x80

    add-long/2addr v0, p2

    .line 210
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasIsConferenceUri:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x81

    add-long/2addr v0, p2

    .line 211
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->isConferenceUri:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x82

    add-long/2addr v0, p2

    .line 212
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasIsCallPull:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x83

    add-long/2addr v0, p2

    .line 213
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->isCallPull:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x84

    add-long/2addr v0, p2

    .line 214
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasIsEncrypted:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x85

    add-long/2addr v0, p2

    .line 215
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->isEncrypted:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 216
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->multiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    const-wide/16 v1, 0x88

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 217
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->redialInfo:Lvendor/qti/hardware/radio/ims/V1_6/RedialInfo;

    const-wide/16 v0, 0xa0

    add-long/2addr p2, v0

    invoke-virtual {p0, p1, p2, p3}, Lvendor/qti/hardware/radio/ims/V1_6/RedialInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 181
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0xa8

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 182
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 183
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
