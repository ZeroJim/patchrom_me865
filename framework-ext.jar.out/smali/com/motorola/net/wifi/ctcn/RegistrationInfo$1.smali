.class final Lcom/motorola/net/wifi/ctcn/RegistrationInfo$1;
.super Ljava/lang/Object;
.source "RegistrationInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/net/wifi/ctcn/RegistrationInfo;
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
        "Lcom/motorola/net/wifi/ctcn/RegistrationInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/motorola/net/wifi/ctcn/RegistrationInfo;
    .locals 1
    .parameter "in"

    .prologue
    .line 15
    new-instance v0, Lcom/motorola/net/wifi/ctcn/RegistrationInfo;

    invoke-direct {v0, p1}, Lcom/motorola/net/wifi/ctcn/RegistrationInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/motorola/net/wifi/ctcn/RegistrationInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/motorola/net/wifi/ctcn/RegistrationInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/motorola/net/wifi/ctcn/RegistrationInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 18
    new-array v0, p1, [Lcom/motorola/net/wifi/ctcn/RegistrationInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/motorola/net/wifi/ctcn/RegistrationInfo$1;->newArray(I)[Lcom/motorola/net/wifi/ctcn/RegistrationInfo;

    move-result-object v0

    return-object v0
.end method
