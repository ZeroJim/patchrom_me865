.class Landroid/view/BrightnessPanel$1;
.super Ljava/lang/Object;
.source "BrightnessPanel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/BrightnessPanel;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/BrightnessPanel;


# direct methods
.method constructor <init>(Landroid/view/BrightnessPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Landroid/view/BrightnessPanel$1;->this$0:Landroid/view/BrightnessPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/view/BrightnessPanel$1;->this$0:Landroid/view/BrightnessPanel;

    #calls: Landroid/view/BrightnessPanel;->resetTimeout()V
    invoke-static {v0}, Landroid/view/BrightnessPanel;->access$000(Landroid/view/BrightnessPanel;)V

    .line 52
    const/4 v0, 0x0

    return v0
.end method
