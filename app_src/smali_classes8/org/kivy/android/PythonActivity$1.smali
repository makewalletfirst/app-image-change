.class Lorg/kivy/android/PythonActivity$1;
.super Ljava/lang/Object;
.source "PythonActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/kivy/android/PythonActivity;->setSecureWindow(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mEnable:Z

.field final synthetic this$0:Lorg/kivy/android/PythonActivity;


# direct methods
.method constructor <init>(Lorg/kivy/android/PythonActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/kivy/android/PythonActivity;

    .line 111
    iput-object p1, p0, Lorg/kivy/android/PythonActivity$1;->this$0:Lorg/kivy/android/PythonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public _initialize(Landroid/app/Activity;Z)Ljava/lang/Runnable;
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "enable"    # Z

    .line 116
    iput-object p1, p0, Lorg/kivy/android/PythonActivity$1;->mActivity:Landroid/app/Activity;

    .line 117
    iput-boolean p2, p0, Lorg/kivy/android/PythonActivity$1;->mEnable:Z

    .line 118
    return-object p0
.end method

.method public run()V
    .locals 4

    .line 123
    iget-object v0, p0, Lorg/kivy/android/PythonActivity$1;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 125
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v2, 0x2000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean v3, p0, Lorg/kivy/android/PythonActivity$1;->mEnable:Z

    xor-int/2addr v1, v3

    if-eqz v1, :cond_1

    .line 126
    return-void

    .line 128
    :cond_1
    const-string v1, "PythonActivity"

    if-eqz v3, :cond_2

    .line 129
    const-string v3, "Setting Secure Window"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    goto :goto_1

    .line 132
    :cond_2
    const-string v3, "UnSetting Secure Window"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 143
    :goto_1
    return-void
.end method
