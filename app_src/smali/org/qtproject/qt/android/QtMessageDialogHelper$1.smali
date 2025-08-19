.class Lorg/qtproject/qt/android/QtMessageDialogHelper$1;
.super Ljava/lang/Object;
.source "QtMessageDialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtMessageDialogHelper;->show(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/QtMessageDialogHelper;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .line 163
    move-object/from16 v1, p0

    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$000(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$000(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$000(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 166
    :cond_0
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v3}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$100(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$002(Lorg/qtproject/qt/android/QtMessageDialogHelper;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 167
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$000(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$202(Lorg/qtproject/qt/android/QtMessageDialogHelper;Landroid/content/res/Resources$Theme;)Landroid/content/res/Resources$Theme;

    .line 169
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$300(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/text/Spanned;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$000(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v2, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v2}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$300(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 171
    :cond_1
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$000(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v2, Lorg/qtproject/qt/android/QtMessageDialogHelper$1$1;

    invoke-direct {v2, v1}, Lorg/qtproject/qt/android/QtMessageDialogHelper$1$1;-><init>(Lorg/qtproject/qt/android/QtMessageDialogHelper$1;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 177
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$000(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v2, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v2}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$400(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v4, 0x1

    if-nez v2, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 178
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$000(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v2, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v2}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$400(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v4

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 179
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$000(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v2, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v2}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$500(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 180
    new-instance v2, Landroid/widget/ScrollView;

    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$100(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 181
    new-instance v5, Landroid/widget/RelativeLayout;

    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$100(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 182
    nop

    .line 183
    nop

    .line 184
    new-instance v0, Lorg/qtproject/qt/android/QtMessageDialogHelper$1$2;

    invoke-direct {v0, v1}, Lorg/qtproject/qt/android/QtMessageDialogHelper$1$2;-><init>(Lorg/qtproject/qt/android/QtMessageDialogHelper$1;)V

    .line 195
    iget-object v6, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v6}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$600(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/text/Spanned;

    move-result-object v6

    const v7, 0x1030044

    const/4 v10, -0x2

    const/16 v11, 0xa

    const/16 v12, 0x8

    const/16 v13, 0x10

    const/4 v14, -0x1

    if-eqz v6, :cond_4

    .line 197
    new-instance v6, Landroid/widget/TextView;

    iget-object v15, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v15}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$100(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v6, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 198
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setId(I)V

    .line 199
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 200
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 202
    iget-object v15, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v15}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$600(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/text/Spanned;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v15, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v15}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$100(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v6, v15, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 205
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v15, v14, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 206
    invoke-virtual {v15, v13, v12, v13, v12}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 207
    invoke-virtual {v15, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 208
    invoke-virtual {v5, v6, v15}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    const/4 v15, 0x2

    goto :goto_2

    .line 195
    :cond_4
    move v15, v4

    const/4 v6, 0x0

    .line 212
    :goto_2
    iget-object v8, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v8}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$700(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/text/Spanned;

    move-result-object v8

    const/4 v9, 0x3

    if-eqz v8, :cond_6

    .line 214
    new-instance v8, Landroid/widget/TextView;

    iget-object v3, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v3}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$100(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v8, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 215
    add-int/lit8 v3, v15, 0x1

    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setId(I)V

    .line 216
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 217
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 219
    iget-object v15, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v15}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$700(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/text/Spanned;

    move-result-object v15

    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v15, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v15}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$100(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v8, v15, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 222
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v14, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 223
    invoke-virtual {v7, v13, v12, v13, v12}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 224
    if-eqz v6, :cond_5

    .line 225
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v7, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_3

    .line 227
    :cond_5
    invoke-virtual {v7, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 228
    :goto_3
    invoke-virtual {v5, v8, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    move v15, v3

    move-object v6, v8

    .line 232
    :cond_6
    iget-object v3, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v3}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$800(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/text/Spanned;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 234
    new-instance v3, Landroid/widget/TextView;

    iget-object v7, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v7}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$100(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 235
    add-int/lit8 v7, v15, 0x1

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setId(I)V

    .line 236
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 237
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 239
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$800(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$100(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/Activity;

    move-result-object v0

    const v8, 0x1030046

    invoke-virtual {v3, v0, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 242
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v14, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 243
    invoke-virtual {v0, v13, v12, v13, v12}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 244
    if-eqz v6, :cond_7

    .line 245
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v0, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_4

    .line 247
    :cond_7
    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 248
    :goto_4
    invoke-virtual {v5, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    move-object v6, v3

    move v15, v7

    .line 252
    :cond_8
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$400(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 254
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$100(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 255
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 256
    add-int/lit8 v7, v15, 0x1

    invoke-virtual {v3, v15}, Landroid/widget/LinearLayout;->setId(I)V

    .line 257
    nop

    .line 258
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$400(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v12, v4

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lorg/qtproject/qt/android/ButtonStruct;

    .line 262
    :try_start_0
    new-instance v0, Landroid/widget/Button;

    iget-object v15, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v15}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$100(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/Activity;

    move-result-object v15

    const-string v16, "android.R$attr"

    invoke-static/range {v16 .. v16}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const-string v11, "borderlessButtonStyle"

    invoke-virtual {v9, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v11, 0x0

    :try_start_1
    invoke-virtual {v9, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v9

    invoke-direct {v0, v15, v11, v9}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 266
    move-object v9, v0

    goto :goto_7

    .line 263
    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    const/4 v11, 0x0

    .line 264
    :goto_6
    new-instance v9, Landroid/widget/Button;

    iget-object v15, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v15}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$100(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v9, v15}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 265
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 268
    :goto_7
    iget-object v0, v13, Lorg/qtproject/qt/android/ButtonStruct;->m_text:Landroid/text/Spanned;

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 269
    invoke-virtual {v9, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    if-nez v12, :cond_9

    .line 272
    nop

    .line 273
    new-instance v0, Landroid/view/View;

    iget-object v12, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v12}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$100(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v0, v12}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 275
    :try_start_2
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v4, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 276
    iget-object v13, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    const-string v15, "dividerVertical"

    invoke-static {v13, v15}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$900(Lorg/qtproject/qt/android/QtMessageDialogHelper;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 277
    invoke-virtual {v3, v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 280
    goto :goto_8

    .line 278
    :catch_2
    move-exception v0

    .line 279
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 282
    :cond_9
    :goto_8
    nop

    .line 283
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v0, v14, v10, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 284
    invoke-virtual {v3, v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    nop

    .line 286
    const/4 v9, 0x3

    const/16 v11, 0xa

    const/4 v12, 0x0

    goto :goto_5

    .line 289
    :cond_a
    :try_start_3
    new-instance v0, Landroid/view/View;

    iget-object v8, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v8}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$100(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 290
    invoke-virtual {v0, v7}, Landroid/view/View;->setId(I)V

    .line 291
    iget-object v7, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    const-string v8, "dividerHorizontal"

    invoke-static {v7, v8}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$900(Lorg/qtproject/qt/android/QtMessageDialogHelper;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 292
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v14, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 293
    const/16 v4, 0xa

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v4, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 294
    if-eqz v6, :cond_b

    .line 295
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v8, 0x3

    invoke-virtual {v7, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_9

    .line 298
    :cond_b
    const/16 v4, 0xa

    invoke-virtual {v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 299
    :goto_9
    invoke-virtual {v5, v0, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 300
    nop

    .line 303
    move-object v6, v0

    goto :goto_a

    .line 301
    :catch_3
    move-exception v0

    .line 302
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 304
    :goto_a
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v14, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 305
    if-eqz v6, :cond_c

    .line 306
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v6, 0x3

    invoke-virtual {v0, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_b

    .line 309
    :cond_c
    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 310
    :goto_b
    const/4 v4, 0x2

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 311
    invoke-virtual {v5, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    :cond_d
    invoke-virtual {v2, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 314
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$000(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 315
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$1;->this$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->access$000(Lorg/qtproject/qt/android/QtMessageDialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 316
    return-void
.end method
