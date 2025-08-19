.class public Lorg/electrum/qr/SimpleScannerActivity;
.super Landroid/app/Activity;
.source "SimpleScannerActivity.java"


# static fields
.field private static final MY_PERMISSIONS_CAMERA:I = 0x3ea


# instance fields
.field final TAG:Ljava/lang/String;

.field private mAlreadyRequestedPermissions:Z

.field private mScannerView:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/electrum/qr/SimpleScannerActivity;->mScannerView:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    .line 34
    const-string v0, "org.electrum.qr.SimpleScannerActivity"

    iput-object v0, p0, Lorg/electrum/qr/SimpleScannerActivity;->TAG:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/electrum/qr/SimpleScannerActivity;->mAlreadyRequestedPermissions:Z

    return-void
.end method

.method static synthetic access$000(Lorg/electrum/qr/SimpleScannerActivity;Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/electrum/qr/SimpleScannerActivity;
    .param p1, "x1"    # Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;
    .param p2, "x2"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1, p2}, Lorg/electrum/qr/SimpleScannerActivity;->setResultAndClose(Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;Ljava/lang/String;)V

    return-void
.end method

.method private hasPermission()Z
    .locals 1

    .line 130
    const-string v0, "android.permission.CAMERA"

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private requestPermission()V
    .locals 2

    .line 136
    const-string v0, "android.permission.CAMERA"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 139
    return-void
.end method

.method private setResultAndClose(Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;Ljava/lang/String;)V
    .locals 5
    .param p1, "scanResult"    # Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;
    .param p2, "textOnly"    # Ljava/lang/String;

    .line 110
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 111
    .local v0, "resultIntent":Landroid/content/Intent;
    const-string v1, "text"

    const-string v2, "org.electrum.qr.SimpleScannerActivity"

    if-eqz p2, :cond_0

    .line 112
    const-string v3, "clipboard contentType TEXT"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 114
    :cond_0
    if-eqz p1, :cond_3

    .line 115
    invoke-virtual {p1}, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->getContentType()Lde/markusfisch/android/zxingcpp/ZxingCpp$ContentType;

    move-result-object v3

    sget-object v4, Lde/markusfisch/android/zxingcpp/ZxingCpp$ContentType;->TEXT:Lde/markusfisch/android/zxingcpp/ZxingCpp$ContentType;

    if-ne v3, v4, :cond_1

    .line 116
    const-string v3, "scanResult contentType TEXT"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p1}, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {p1}, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->getContentType()Lde/markusfisch/android/zxingcpp/ZxingCpp$ContentType;

    move-result-object v1

    sget-object v3, Lde/markusfisch/android/zxingcpp/ZxingCpp$ContentType;->BINARY:Lde/markusfisch/android/zxingcpp/ZxingCpp$ContentType;

    if-ne v1, v3, :cond_2

    .line 119
    const-string v1, "scanResult contentType BINARY"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p1}, Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;->getRawBytes()[B

    move-result-object v1

    const-string v2, "binary"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_0

    .line 122
    :cond_2
    const-string v1, "scanresult contenttype unknown"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_3
    :goto_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lorg/electrum/qr/SimpleScannerActivity;->setResult(ILandroid/content/Intent;)V

    .line 126
    invoke-virtual {p0}, Lorg/electrum/qr/SimpleScannerActivity;->finish()V

    .line 127
    return-void
.end method

.method private startCamera()V
    .locals 3

    .line 93
    iget-object v0, p0, Lorg/electrum/qr/SimpleScannerActivity;->mScannerView:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    invoke-direct {v0, p0}, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/electrum/qr/SimpleScannerActivity;->mScannerView:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    .line 95
    const/high16 v1, 0x3f400000    # 0.75f

    invoke-virtual {v0, v1}, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->setCropRatio(F)V

    .line 97
    const v0, 0x7f060009

    invoke-virtual {p0, v0}, Lorg/electrum/qr/SimpleScannerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 98
    .local v0, "contentFrame":Landroid/view/ViewGroup;
    iget-object v1, p0, Lorg/electrum/qr/SimpleScannerActivity;->mScannerView:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 99
    iget-object v1, p0, Lorg/electrum/qr/SimpleScannerActivity;->mScannerView:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    new-instance v2, Lorg/electrum/qr/SimpleScannerActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/electrum/qr/SimpleScannerActivity$$ExternalSyntheticLambda0;-><init>(Lorg/electrum/qr/SimpleScannerActivity;)V

    invoke-virtual {v1, v2}, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->setOnBarcodeListener(Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView$OnBarcodeListener;)V

    .line 106
    .end local v0    # "contentFrame":Landroid/view/ViewGroup;
    :cond_0
    iget-object v0, p0, Lorg/electrum/qr/SimpleScannerActivity;->mScannerView:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    invoke-virtual {v0}, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->openAsync()V

    .line 107
    return-void
.end method


# virtual methods
.method public synthetic lambda$startCamera$0$org-electrum-qr-SimpleScannerActivity(Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;)Z
    .locals 1
    .param p1, "result"    # Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;

    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/electrum/qr/SimpleScannerActivity;->setResultAndClose(Lde/markusfisch/android/zxingcpp/ZxingCpp$Result;Ljava/lang/String;)V

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f08000a

    invoke-virtual {p0, v0}, Lorg/electrum/qr/SimpleScannerActivity;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lorg/electrum/qr/SimpleScannerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 45
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "text":Ljava/lang/String;
    const v2, 0x7f06000c

    invoke-virtual {p0, v2}, Lorg/electrum/qr/SimpleScannerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 47
    .local v2, "hintTextView":Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    const v3, 0x7f060017

    invoke-virtual {p0, v3}, Lorg/electrum/qr/SimpleScannerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 51
    .local v3, "btn":Landroid/widget/Button;
    new-instance v4, Lorg/electrum/qr/SimpleScannerActivity$1;

    invoke-direct {v4, p0}, Lorg/electrum/qr/SimpleScannerActivity$1;-><init>(Lorg/electrum/qr/SimpleScannerActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 86
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 87
    iget-object v0, p0, Lorg/electrum/qr/SimpleScannerActivity;->mScannerView:Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Lde/markusfisch/android/barcodescannerview/widget/BarcodeScannerView;->close()V

    .line 90
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 144
    packed-switch p1, :pswitch_data_0

    .line 157
    return-void

    .line 146
    :pswitch_0
    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 149
    invoke-direct {p0}, Lorg/electrum/qr/SimpleScannerActivity;->startCamera()V

    .line 154
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 76
    invoke-direct {p0}, Lorg/electrum/qr/SimpleScannerActivity;->hasPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-direct {p0}, Lorg/electrum/qr/SimpleScannerActivity;->startCamera()V

    goto :goto_0

    .line 78
    :cond_0
    iget-boolean v0, p0, Lorg/electrum/qr/SimpleScannerActivity;->mAlreadyRequestedPermissions:Z

    if-nez v0, :cond_1

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/electrum/qr/SimpleScannerActivity;->mAlreadyRequestedPermissions:Z

    .line 80
    invoke-direct {p0}, Lorg/electrum/qr/SimpleScannerActivity;->requestPermission()V

    .line 82
    :cond_1
    :goto_0
    return-void
.end method
