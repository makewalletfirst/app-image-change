.class Lorg/renpy/android/Hardware$2;
.super Landroid/content/BroadcastReceiver;
.source "Hardware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/renpy/android/Hardware;->registerNetworkCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 269
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "i"    # Landroid/content/Intent;

    .line 273
    invoke-static {}, Lorg/renpy/android/Hardware;->checkNetwork()Z

    move-result v0

    sput-boolean v0, Lorg/renpy/android/Hardware;->network_state:Z

    .line 274
    return-void
.end method
