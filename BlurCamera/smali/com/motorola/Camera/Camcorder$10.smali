.class Lcom/motorola/Camera/Camcorder$10;
.super Ljava/lang/Object;
.source "Camcorder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/Camera/Camcorder;->checkExternalSDCardFirstTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/Camcorder;


# direct methods
.method constructor <init>(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter

    .prologue
    .line 5103
    iput-object p1, p0, Lcom/motorola/Camera/Camcorder$10;->this$0:Lcom/motorola/Camera/Camcorder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 5106
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder$10;->this$0:Lcom/motorola/Camera/Camcorder;

    const/4 v1, 0x1

    #setter for: Lcom/motorola/Camera/Camcorder;->mNeedCheckStorage:Z
    invoke-static {v0, v1}, Lcom/motorola/Camera/Camcorder;->access$7302(Lcom/motorola/Camera/Camcorder;Z)Z

    .line 5107
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder$10;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->updateRemainCount()V
    invoke-static {v0}, Lcom/motorola/Camera/Camcorder;->access$1100(Lcom/motorola/Camera/Camcorder;)V

    .line 5108
    return-void
.end method
