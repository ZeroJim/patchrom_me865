.class public Lmotorola/app/admin/DevicePolicyManagerExt;
.super Ljava/lang/Object;
.source "DevicePolicyManagerExt.java"


# static fields
.field private static EDM_VERSION:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private edm_feature_enable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "DevicePolicyManagerExt"

    sput-object v0, Lmotorola/app/admin/DevicePolicyManagerExt;->TAG:Ljava/lang/String;

    .line 30
    const-string v0, "1.4.0"

    sput-object v0, Lmotorola/app/admin/DevicePolicyManagerExt;->EDM_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmotorola/app/admin/DevicePolicyManagerExt;->edm_feature_enable:Z

    .line 34
    sget-object v0, Lmotorola/app/admin/DevicePolicyManagerExt;->TAG:Ljava/lang/String;

    const-string v1, "MOT EDM API - DevicePolicyManagerExt"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method


# virtual methods
.method public getActiveSyncDeviceID(Landroid/app/admin/DevicePolicyManager;)V
    .locals 2
    .parameter "dpm"

    .prologue
    .line 39
    sget-object v0, Lmotorola/app/admin/DevicePolicyManagerExt;->TAG:Ljava/lang/String;

    const-string v1, "MOT EDM API - getActiveSyncID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method

.method public getEdmVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lmotorola/app/admin/DevicePolicyManagerExt;->edm_feature_enable:Z

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lmotorola/app/admin/DevicePolicyManagerExt;->EDM_VERSION:Ljava/lang/String;

    .line 51
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
