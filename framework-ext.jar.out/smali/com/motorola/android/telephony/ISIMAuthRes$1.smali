.class final Lcom/motorola/android/telephony/ISIMAuthRes$1;
.super Ljava/lang/Object;
.source "ISIMAuthRes.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/ISIMAuthRes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/motorola/android/telephony/ISIMAuthRes;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/motorola/android/telephony/ISIMAuthRes;
    .locals 9
    .parameter "source"

    .prologue
    .line 44
    const/4 v1, 0x0

    .line 46
    .local v1, res_length:I
    const/4 v3, 0x0

    .line 48
    .local v3, ik_length:I
    const/4 v5, 0x0

    .line 50
    .local v5, ck_length:I
    const/4 v7, 0x0

    .line 53
    .local v7, auts_length:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 55
    .local v2, res:[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 57
    .local v4, ik:[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 59
    .local v6, ck:[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 62
    .local v8, auts:[B
    new-instance v0, Lcom/motorola/android/telephony/ISIMAuthRes;

    invoke-direct/range {v0 .. v8}, Lcom/motorola/android/telephony/ISIMAuthRes;-><init>(I[BI[BI[BI[B)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/motorola/android/telephony/ISIMAuthRes$1;->createFromParcel(Landroid/os/Parcel;)Lcom/motorola/android/telephony/ISIMAuthRes;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/motorola/android/telephony/ISIMAuthRes;
    .locals 1
    .parameter "size"

    .prologue
    .line 66
    new-array v0, p1, [Lcom/motorola/android/telephony/ISIMAuthRes;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/motorola/android/telephony/ISIMAuthRes$1;->newArray(I)[Lcom/motorola/android/telephony/ISIMAuthRes;

    move-result-object v0

    return-object v0
.end method
