.class final Lcom/motorola/Camera/Camera$PanoramaShutterCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/motorola/android/camera/Panorama$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PanoramaShutterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/Camera;


# direct methods
.method private constructor <init>(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 5215
    iput-object p1, p0, Lcom/motorola/Camera/Camera$PanoramaShutterCallback;->this$0:Lcom/motorola/Camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/Camera/Camera;Lcom/motorola/Camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5215
    invoke-direct {p0, p1}, Lcom/motorola/Camera/Camera$PanoramaShutterCallback;-><init>(Lcom/motorola/Camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 2

    .prologue
    .line 5218
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v1, "PanoramaShutterCallback::OnShutter()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5219
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera$PanoramaShutterCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-boolean v0, v0, Lcom/motorola/Camera/Camera;->mPausing:Z

    if-eqz v0, :cond_1

    .line 5223
    :goto_0
    return-void

    .line 5221
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera$PanoramaShutterCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$2200(Lcom/motorola/Camera/Camera;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
