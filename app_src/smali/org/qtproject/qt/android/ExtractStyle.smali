.class public Lorg/qtproject/qt/android/ExtractStyle;
.super Ljava/lang/Object;
.source "ExtractStyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;,
        Lorg/qtproject/qt/android/ExtractStyle$DrawableCache;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final EXTRACT_STYLE_KEY:Ljava/lang/String; = "extract.android.style"

.field private static final EXTRACT_STYLE_MINIMAL_KEY:Ljava/lang/String; = "extract.android.style.option"

.field private static m_extractMinimal:Z

.field private static m_missingDarkStyle:Z

.field private static m_missingNormalStyle:Z

.field private static m_stylePath:Ljava/lang/String;


# instance fields
.field final DisableDrawableStatesLabels:[Ljava/lang/String;

.field final DrawableStates:[I

.field final DrawableStatesLabels:[Ljava/lang/String;

.field final EMPTY_STATE_SET:[I

.field final ENABLED_FOCUSED_SELECTED_STATE_SET:[I

.field final ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field final ENABLED_FOCUSED_STATE_SET:[I

.field final ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

.field final ENABLED_SELECTED_STATE_SET:[I

.field final ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field final ENABLED_STATE_SET:[I

.field final ENABLED_WINDOW_FOCUSED_STATE_SET:[I

.field final FOCUSED_SELECTED_STATE_SET:[I

.field final FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field final FOCUSED_STATE_SET:[I

.field final FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

.field final PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

.field final PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field final PRESSED_ENABLED_FOCUSED_STATE_SET:[I

.field final PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

.field final PRESSED_ENABLED_SELECTED_STATE_SET:[I

.field final PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field final PRESSED_ENABLED_STATE_SET:[I

.field final PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

.field final PRESSED_FOCUSED_SELECTED_STATE_SET:[I

.field final PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field final PRESSED_FOCUSED_STATE_SET:[I

.field final PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

.field final PRESSED_SELECTED_STATE_SET:[I

.field final PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field final PRESSED_STATE_SET:[I

.field final PRESSED_WINDOW_FOCUSED_STATE_SET:[I

.field final SELECTED_STATE_SET:[I

.field final SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field final WINDOW_FOCUSED_STATE_SET:[I

.field final defaultBackgroundColor:I

.field final defaultTextColor:I

.field m_context:Landroid/content/Context;

.field private final m_drawableCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/qtproject/qt/android/ExtractStyle$DrawableCache;",
            ">;"
        }
    .end annotation
.end field

.field final m_extractPath:Ljava/lang/String;

.field final m_minimal:Z

.field final m_theme:Landroid/content/res/Resources$Theme;

.field final sScaleTypeArray:[Ljava/lang/String;

.field final viewDrawableStatesState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    nop

    .line 142
    const/4 v0, 0x0

    sput-boolean v0, Lorg/qtproject/qt/android/ExtractStyle;->m_missingNormalStyle:Z

    .line 143
    sput-boolean v0, Lorg/qtproject/qt/android/ExtractStyle;->m_missingDarkStyle:Z

    .line 144
    const/4 v1, 0x0

    sput-object v1, Lorg/qtproject/qt/android/ExtractStyle;->m_stylePath:Ljava/lang/String;

    .line 145
    sput-boolean v0, Lorg/qtproject/qt/android/ExtractStyle;->m_extractMinimal:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 15

    .line 175
    move-object v1, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, v1, Lorg/qtproject/qt/android/ExtractStyle;->viewDrawableStatesState:[I

    .line 79
    const/4 v0, 0x0

    new-array v2, v0, [I

    iput-object v2, v1, Lorg/qtproject/qt/android/ExtractStyle;->EMPTY_STATE_SET:[I

    .line 80
    const/4 v2, 0x1

    new-array v3, v2, [I

    const v4, 0x101009e

    aput v4, v3, v0

    iput-object v3, v1, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_STATE_SET:[I

    .line 81
    new-array v4, v2, [I

    const v5, 0x101009c

    aput v5, v4, v0

    iput-object v4, v1, Lorg/qtproject/qt/android/ExtractStyle;->FOCUSED_STATE_SET:[I

    .line 82
    new-array v5, v2, [I

    const v6, 0x10100a1

    aput v6, v5, v0

    iput-object v5, v1, Lorg/qtproject/qt/android/ExtractStyle;->SELECTED_STATE_SET:[I

    .line 83
    new-array v6, v2, [I

    const v7, 0x10100a7

    aput v7, v6, v0

    iput-object v6, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_STATE_SET:[I

    .line 84
    new-array v7, v2, [I

    const v8, 0x101009d

    aput v8, v7, v0

    iput-object v7, v1, Lorg/qtproject/qt/android/ExtractStyle;->WINDOW_FOCUSED_STATE_SET:[I

    .line 85
    invoke-direct {p0, v3, v4}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v8

    iput-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_FOCUSED_STATE_SET:[I

    .line 86
    invoke-direct {p0, v3, v5}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v9

    iput-object v9, v1, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_SELECTED_STATE_SET:[I

    .line 87
    invoke-direct {p0, v3, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v10

    iput-object v10, v1, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    .line 88
    invoke-direct {p0, v4, v5}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v10

    iput-object v10, v1, Lorg/qtproject/qt/android/ExtractStyle;->FOCUSED_SELECTED_STATE_SET:[I

    .line 89
    invoke-direct {p0, v4, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v11

    iput-object v11, v1, Lorg/qtproject/qt/android/ExtractStyle;->FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 90
    invoke-direct {p0, v5, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v11

    iput-object v11, v1, Lorg/qtproject/qt/android/ExtractStyle;->SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 91
    invoke-direct {p0, v8, v5}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v11

    iput-object v11, v1, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    .line 92
    invoke-direct {p0, v8, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v8

    iput-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 93
    invoke-direct {p0, v9, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v8

    iput-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 94
    invoke-direct {p0, v10, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v8

    iput-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 95
    invoke-direct {p0, v11, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v8

    iput-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 96
    invoke-direct {p0, v6, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v8

    iput-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 97
    invoke-direct {p0, v6, v5}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v8

    iput-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_SELECTED_STATE_SET:[I

    .line 98
    invoke-direct {p0, v8, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v8

    iput-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 99
    invoke-direct {p0, v6, v4}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v8

    iput-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_FOCUSED_STATE_SET:[I

    .line 100
    invoke-direct {p0, v8, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v9

    iput-object v9, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 101
    invoke-direct {p0, v8, v5}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v8

    iput-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_FOCUSED_SELECTED_STATE_SET:[I

    .line 102
    invoke-direct {p0, v8, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v8

    iput-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 103
    invoke-direct {p0, v6, v3}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v3

    iput-object v3, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_STATE_SET:[I

    .line 104
    invoke-direct {p0, v3, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v6

    iput-object v6, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    .line 105
    invoke-direct {p0, v3, v5}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v6

    iput-object v6, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_SELECTED_STATE_SET:[I

    .line 106
    invoke-direct {p0, v6, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v6

    iput-object v6, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 107
    invoke-direct {p0, v3, v4}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v3

    iput-object v3, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    .line 108
    invoke-direct {p0, v3, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v4

    iput-object v4, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 109
    invoke-direct {p0, v3, v5}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v3

    iput-object v3, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    .line 110
    invoke-direct {p0, v3, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v3

    iput-object v3, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 116
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    iput-object v3, v1, Lorg/qtproject/qt/android/ExtractStyle;->DrawableStates:[I

    .line 121
    const-string v4, "active"

    const-string v5, "checked"

    const-string v6, "enabled"

    const-string v7, "focused"

    const-string v8, "pressed"

    const-string v9, "selected"

    const-string v10, "window_focused"

    const-string v11, "background"

    const-string v12, "multiline"

    const-string v13, "activated"

    const-string v14, "accelerated"

    filled-new-array/range {v4 .. v14}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/qtproject/qt/android/ExtractStyle;->DrawableStatesLabels:[Ljava/lang/String;

    .line 123
    const-string v4, "inactive"

    const-string v5, "unchecked"

    const-string v6, "disabled"

    const-string v7, "not_focused"

    const-string v8, "no_pressed"

    const-string v9, "unselected"

    const-string v10, "window_not_focused"

    const-string v11, "background"

    const-string v12, "multiline"

    const-string v13, "activated"

    const-string v14, "accelerated"

    filled-new-array/range {v4 .. v14}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/qtproject/qt/android/ExtractStyle;->DisableDrawableStatesLabels:[Ljava/lang/String;

    .line 126
    const-string v4, "MATRIX"

    const-string v5, "FIT_XY"

    const-string v6, "FIT_START"

    const-string v7, "FIT_CENTER"

    const-string v8, "FIT_END"

    const-string v9, "CENTER"

    const-string v10, "CENTER_CROP"

    const-string v11, "CENTER_INSIDE"

    filled-new-array/range {v4 .. v11}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/qtproject/qt/android/ExtractStyle;->sScaleTypeArray:[Ljava/lang/String;

    .line 137
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_drawableCache:Ljava/util/HashMap;

    .line 176
    move/from16 v3, p3

    iput-boolean v3, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_minimal:Z

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_extractPath:Ljava/lang/String;

    .line 178
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v4

    .line 179
    if-nez v4, :cond_0

    .line 180
    const-string v4, "Qt JAVA"

    const-string v5, "Cannot create Android style directory."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    move-object/from16 v4, p1

    iput-object v4, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_context:Landroid/content/Context;

    .line 182
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    iput-object v4, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    .line 183
    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 188
    invoke-virtual {v4, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, v1, Lorg/qtproject/qt/android/ExtractStyle;->defaultBackgroundColor:I

    .line 189
    const v0, 0xffffff

    invoke-virtual {v4, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 190
    if-ne v2, v0, :cond_1

    .line 191
    const/4 v2, 0x2

    invoke-virtual {v4, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 192
    :cond_1
    iput v2, v1, Lorg/qtproject/qt/android/ExtractStyle;->defaultTextColor:I

    .line 193
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 196
    :try_start_0
    new-instance v2, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "style.json"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v2}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->beginObject()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 199
    :try_start_1
    const-string v0, "defaultStyle"

    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v0

    invoke-direct {p0}, Lorg/qtproject/qt/android/ExtractStyle;->extractDefaultPalette()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 200
    invoke-direct {p0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->extractWindow(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V

    .line 201
    const-string v0, "buttonStyle"

    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v0

    const v3, 0x1010048

    const-string v4, "QPushButton"

    invoke-virtual {p0, v3, v4}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 202
    const-string v0, "spinnerStyle"

    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v0

    const v3, 0x1010081

    const-string v4, "QComboBox"

    invoke-virtual {p0, v3, v4}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 203
    const v0, 0x1010078

    const-string v3, "progressBarStyleHorizontal"

    const-string v4, "QProgressBar"

    invoke-virtual {p0, v2, v0, v3, v4}, Lorg/qtproject/qt/android/ExtractStyle;->extractProgressBar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 204
    const v0, 0x101007a

    const-string v3, "progressBarStyleLarge"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v0, v3, v4}, Lorg/qtproject/qt/android/ExtractStyle;->extractProgressBar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 205
    const v0, 0x1010079

    const-string v3, "progressBarStyleSmall"

    invoke-virtual {p0, v2, v0, v3, v4}, Lorg/qtproject/qt/android/ExtractStyle;->extractProgressBar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 206
    const v0, 0x1010077

    const-string v3, "progressBarStyle"

    invoke-virtual {p0, v2, v0, v3, v4}, Lorg/qtproject/qt/android/ExtractStyle;->extractProgressBar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->extractAbsSeekBar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V

    .line 208
    invoke-virtual {p0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->extractSwitch(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V

    .line 209
    const v0, 0x101006c

    const-string v3, "checkboxStyle"

    const-string v5, "QCheckBox"

    invoke-virtual {p0, v2, v0, v3, v5}, Lorg/qtproject/qt/android/ExtractStyle;->extractCompoundButton(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v0, "editTextStyle"

    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v0

    const v3, 0x101006e

    const-string v5, "QLineEdit"

    invoke-virtual {p0, v3, v5}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 211
    const v0, 0x101007e

    const-string v3, "radioButtonStyle"

    const-string v5, "QRadioButton"

    invoke-virtual {p0, v2, v0, v3, v5}, Lorg/qtproject/qt/android/ExtractStyle;->extractCompoundButton(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v0, "textViewStyle"

    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v0

    const v3, 0x1010084

    const-string v5, "QWidget"

    invoke-virtual {p0, v3, v5}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 213
    const-string v0, "scrollViewStyle"

    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v0

    const v3, 0x1010080

    const-string v5, "QAbstractScrollArea"

    invoke-virtual {p0, v3, v5}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 214
    invoke-virtual {p0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->extractListView(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V

    .line 215
    const-string v0, "listSeparatorTextViewStyle"

    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v0

    const v3, 0x1010208

    invoke-virtual {p0, v3, v4}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 216
    invoke-direct {p0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->extractItemsStyle(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V

    .line 217
    const v0, 0x101004b

    const-string v3, "buttonStyleToggle"

    invoke-virtual {p0, v2, v0, v3, v4}, Lorg/qtproject/qt/android/ExtractStyle;->extractCompoundButton(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->extractCalendar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V

    .line 219
    invoke-virtual {p0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->extractToolBar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V

    .line 220
    const-string v0, "actionButtonStyle"

    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v0

    const v3, 0x10102d8

    const-string v5, "QToolButton"

    invoke-virtual {p0, v3, v5}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 221
    const-string v0, "actionBarTabTextStyle"

    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v0

    const v3, 0x10102f5

    invoke-virtual {p0, v3, v4}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 222
    const-string v0, "actionBarTabStyle"

    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v0

    const v3, 0x10102f3

    invoke-virtual {p0, v3, v4}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 223
    const-string v0, "actionOverflowButtonStyle"

    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v0

    const v3, 0x10102f6

    invoke-virtual {p0, v3, v4}, Lorg/qtproject/qt/android/ExtractStyle;->extractImageViewInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 224
    invoke-virtual {p0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->extractTabBar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 227
    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 228
    :goto_0
    invoke-virtual {v2}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->endObject()V

    .line 229
    invoke-virtual {v2}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 232
    goto :goto_1

    .line 230
    :catch_1
    move-exception v0

    .line 231
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 233
    :goto_1
    return-void

    :array_0
    .array-data 4
        0x101009c
        0x101009d
        0x101009e
        0x10100a1
        0x10100a7
        0x10102fe
        0x101031b
        0x1010367
        0x1010368
        0x1010369
    .end array-data

    :array_1
    .array-data 4
        0x10100a2
        0x10100a0
        0x101009e
        0x101009c
        0x10100a7
        0x10100a1
        0x101009d
        0x1020000
        0x101034d
        0x10102fe
        0x101031b
    .end array-data

    :array_2
    .array-data 4
        0x1010031
        0x1010036
        0x1010098
    .end array-data
.end method

.method private extractDefaultPalette()Lorg/json/JSONObject;
    .locals 3

    .line 1766
    const v0, 0x1010034

    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearance(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 1768
    :try_start_0
    const-string v1, "defaultBackgroundColor"

    iget v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->defaultBackgroundColor:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1769
    const-string v1, "defaultTextColorPrimary"

    iget v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->defaultTextColor:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1772
    goto :goto_0

    .line 1770
    :catch_0
    move-exception v1

    .line 1771
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1773
    :goto_0
    return-object v0
.end method

.method private extractItemStyle(ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    .line 1556
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/qtproject/qt/android/ExtractStyle;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 1557
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    .line 1558
    :goto_0
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    .line 1559
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    goto :goto_0

    .line 1561
    :cond_0
    if-eq v1, v2, :cond_1

    .line 1562
    return-object v0

    .line 1564
    :cond_1
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 1565
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object p1

    .line 1566
    const-string v2, "TextView"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1567
    const p1, 0x1010084

    const v2, 0x101039e

    invoke-virtual {p0, p1, p2, v2, v1}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;ILandroid/util/AttributeSet;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 1568
    :cond_2
    const-string v1, "CheckedTextView"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1569
    invoke-virtual {p0, p2}, Lorg/qtproject/qt/android/ExtractStyle;->extractCheckedTextView(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 1572
    :cond_3
    goto :goto_1

    .line 1570
    :catch_0
    move-exception p1

    .line 1571
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1573
    :goto_1
    return-object v0
.end method

.method private extractItemsStyle(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V
    .locals 9

    .line 1578
    const-string v0, "simple_selectable_list_item"

    const-string v1, "simple_dropdown_item_1line"

    const-string v2, "simple_spinner_dropdown_item"

    const-string v3, "simple_spinner_item"

    const-string v4, "simple_list_item_single_choice"

    const-string v5, "simple_list_item_multiple_choice"

    const-string v6, "simple_list_item_checked"

    const-string v7, "simple_list_item"

    const v8, 0x1090003

    :try_start_0
    invoke-direct {p0, v8, v7}, Lorg/qtproject/qt/android/ExtractStyle;->extractItemStyle(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 1579
    if-eqz v8, :cond_0

    .line 1580
    invoke-virtual {p1, v7}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v7

    invoke-virtual {v7, v8}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 1581
    :cond_0
    const v7, 0x1090005

    invoke-direct {p0, v7, v6}, Lorg/qtproject/qt/android/ExtractStyle;->extractItemStyle(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 1582
    if-eqz v7, :cond_1

    .line 1583
    invoke-virtual {p1, v6}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v6

    invoke-virtual {v6, v7}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 1584
    :cond_1
    const v6, 0x1090010

    invoke-direct {p0, v6, v5}, Lorg/qtproject/qt/android/ExtractStyle;->extractItemStyle(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 1585
    if-eqz v6, :cond_2

    .line 1586
    invoke-virtual {p1, v5}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v5

    invoke-virtual {v5, v6}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 1587
    :cond_2
    const v5, 0x109000f

    invoke-direct {p0, v5, v4}, Lorg/qtproject/qt/android/ExtractStyle;->extractItemStyle(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 1588
    if-eqz v5, :cond_3

    .line 1589
    invoke-virtual {p1, v4}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 1590
    :cond_3
    const v4, 0x1090008

    invoke-direct {p0, v4, v3}, Lorg/qtproject/qt/android/ExtractStyle;->extractItemStyle(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1591
    if-eqz v4, :cond_4

    .line 1592
    invoke-virtual {p1, v3}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 1593
    :cond_4
    const v3, 0x1090009

    invoke-direct {p0, v3, v2}, Lorg/qtproject/qt/android/ExtractStyle;->extractItemStyle(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1594
    if-eqz v3, :cond_5

    .line 1595
    invoke-virtual {p1, v2}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 1596
    :cond_5
    const v2, 0x109000a

    invoke-direct {p0, v2, v1}, Lorg/qtproject/qt/android/ExtractStyle;->extractItemStyle(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1597
    if-eqz v2, :cond_6

    .line 1598
    invoke-virtual {p1, v1}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 1599
    :cond_6
    const v1, 0x1090015

    invoke-direct {p0, v1, v0}, Lorg/qtproject/qt/android/ExtractStyle;->extractItemStyle(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1600
    if-eqz v1, :cond_7

    .line 1601
    invoke-virtual {p1, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1604
    :cond_7
    goto :goto_0

    .line 1602
    :catch_0
    move-exception p1

    .line 1603
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1605
    :goto_0
    return-void
.end method

.method static native extractNativeChunkInfo20(J)[I
.end method

.method private extractWindow(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V
    .locals 8

    .line 1741
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1743
    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x1010054

    aput v3, v1, v2

    const/4 v2, 0x1

    const v4, 0x1010055

    aput v4, v1, v2

    .line 1747
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    .line 1748
    const v2, 0x1010076

    invoke-direct {p0, v2, v1}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1749
    invoke-direct {p0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1751
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1752
    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 1753
    const-string v6, "Window_windowBackground"

    const-string v7, "16842870_Window_windowBackground"

    invoke-virtual {p0, v3, v7, v5}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1755
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1756
    if-eqz v1, :cond_1

    .line 1757
    const-string v3, "Window_windowFrame"

    const-string v4, "16842870_Window_windowFrame"

    invoke-virtual {p0, v1, v4, v5}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1758
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1759
    const-string v1, "windowStyle"

    invoke-virtual {p1, v1}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1762
    goto :goto_0

    .line 1760
    :catch_0
    move-exception p1

    .line 1761
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1763
    :goto_0
    return-void
.end method

.method private findPatchesMarings(Landroid/graphics/drawable/Drawable;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 558
    const-class v0, Landroid/graphics/drawable/NinePatchDrawable;

    const-string v1, "mNinePatch"

    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->tryGetAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 559
    if-eqz v0, :cond_0

    .line 560
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/NinePatch;

    goto :goto_0

    .line 562
    :cond_0
    const-class v0, Landroid/graphics/drawable/NinePatchDrawable;

    const-string v2, "mNinePatchState"

    invoke-virtual {p0, v0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 563
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/NinePatch;

    .line 565
    :goto_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/graphics/NinePatch;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mNativeChunk"

    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->extractNativeChunkInfo20(J)[I

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonChunkInfo([I)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method private findStateIndex(ILjava/util/HashMap;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 613
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 614
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 615
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 616
    :cond_0
    goto :goto_0

    .line 617
    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private getAnimatedStateListDrawable(Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 9

    .line 621
    invoke-direct {p0, p1, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getStateListDrawable(Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 623
    :try_start_0
    const-string v0, "android.graphics.drawable.AnimatedStateListDrawable"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 624
    const-string v1, "mState"

    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 626
    if-eqz p1, :cond_1

    .line 627
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 628
    const-string v1, "mStateIds"

    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getStateIds(Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object v1

    .line 629
    const-string v2, "mTransitions"

    invoke-virtual {p0, v0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/ExtractStyle;->getStateTransitions(Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object p1

    .line 631
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 632
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-direct {p0, v2, v1}, Lorg/qtproject/qt/android/ExtractStyle;->findStateIndex(ILjava/util/HashMap;)I

    move-result v2

    .line 633
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/16 v5, 0x20

    shr-long/2addr v3, v5

    long-to-int v3, v3

    invoke-direct {p0, v3, v1}, Lorg/qtproject/qt/android/ExtractStyle;->findStateIndex(ILjava/util/HashMap;)I

    move-result v3

    .line 635
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 636
    const-string v6, "from"

    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 637
    const-string v3, "to"

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 638
    const-string v2, "reverse"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    shr-long v5, v6, v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 640
    const-string v2, "stateslist"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 641
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 642
    const-string v2, "transition"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    goto :goto_0

    .line 647
    :cond_1
    goto :goto_2

    .line 645
    :catch_0
    move-exception p1

    .line 646
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 648
    :goto_2
    return-object p2
.end method

.method private getAnimationDrawable(Landroid/graphics/drawable/AnimationDrawable;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 9

    .line 500
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 502
    :try_start_0
    const-string v1, "type"

    const-string v2, "animation"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 503
    const-string v1, "oneshot"

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 504
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v1

    .line 505
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 506
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 507
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 508
    const-string v5, "duration"

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 509
    const-string v5, "drawable"

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "__"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v7, v8}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 510
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 506
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 512
    :cond_0
    const-string p1, "frames"

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    goto :goto_1

    .line 513
    :catch_0
    move-exception p1

    .line 514
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 516
    :goto_1
    return-object v0
.end method

.method private getArrayListFromIntArray([I)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 917
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 918
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    .line 919
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 918
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 920
    :cond_0
    return-object v0
.end method

.method private getGradientDrawable(Landroid/graphics/drawable/GradientDrawable;)Lorg/json/JSONObject;
    .locals 6

    .line 444
    const-string v0, "gradient"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 446
    :try_start_0
    const-string v2, "type"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 447
    invoke-virtual {p1}, Landroid/graphics/drawable/GradientDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    .line 448
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 449
    const-string v3, "shape"

    const-string v4, "mShape"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 450
    const-string v3, "mGradient"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 451
    const-string v0, "mOrientation"

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 452
    if-eqz v0, :cond_0

    .line 453
    const-string v3, "orientation"

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable$Orientation;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 454
    :cond_0
    const-string v0, "mGradientColors"

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 455
    if-eqz v0, :cond_1

    .line 456
    const-string v3, "colors"

    const/4 v4, 0x0

    array-length v5, v0

    invoke-direct {p0, v0, v4, v5}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonArray([III)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 457
    :cond_1
    const-string v0, "positions"

    const-string v3, "mPositions"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    invoke-direct {p0, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonArray([F)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 458
    const-string v0, "strokeWidth"

    const-string v3, "mStrokeWidth"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 459
    const-string v0, "strokeDashWidth"

    const-string v3, "mStrokeDashWidth"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 460
    const-string v0, "strokeDashGap"

    const-string v3, "mStrokeDashGap"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 461
    const-string v0, "radius"

    const-string v3, "mRadius"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 462
    const-string v0, "mRadiusArray"

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 463
    if-eqz v0, :cond_2

    .line 464
    const-string v3, "radiusArray"

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonArray([F)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 465
    :cond_2
    const-string v0, "mPadding"

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 466
    if-eqz v0, :cond_3

    .line 467
    const-string v3, "padding"

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonRect(Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 468
    :cond_3
    const-string v0, "width"

    const-string v3, "mWidth"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 469
    const-string v0, "height"

    const-string v3, "mHeight"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 470
    const-string v0, "innerRadiusRatio"

    const-string v3, "mInnerRadiusRatio"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 471
    const-string v0, "thicknessRatio"

    const-string v3, "mThicknessRatio"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 472
    const-string v0, "innerRadius"

    const-string v3, "mInnerRadius"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 473
    const-string v0, "thickness"

    const-string v3, "mThickness"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    goto :goto_0

    .line 474
    :catch_0
    move-exception p1

    .line 475
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 477
    :goto_0
    return-object v1
.end method

.method private getJsonArray([F)Lorg/json/JSONArray;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 538
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 539
    if-eqz p1, :cond_0

    .line 540
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    .line 541
    float-to-double v3, v3

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 540
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 542
    :cond_0
    return-object v0
.end method

.method private getJsonArray([III)Lorg/json/JSONArray;
    .locals 2

    .line 530
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 531
    add-int/2addr p3, p2

    .line 532
    nop

    :goto_0
    if-ge p2, p3, :cond_0

    .line 533
    aget v1, p1, p2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 532
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 534
    :cond_0
    return-object v0
.end method

.method private getJsonChunkInfo([I)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 546
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 547
    if-nez p1, :cond_0

    .line 548
    return-object v0

    .line 550
    :cond_0
    const/4 v1, 0x0

    aget v2, p1, v1

    const/4 v3, 0x3

    invoke-direct {p0, p1, v3, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonArray([III)Lorg/json/JSONArray;

    move-result-object v2

    const-string v4, "xdivs"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 551
    aget v2, p1, v1

    add-int/2addr v2, v3

    const/4 v4, 0x1

    aget v5, p1, v4

    invoke-direct {p0, p1, v2, v5}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonArray([III)Lorg/json/JSONArray;

    move-result-object v2

    const-string v5, "ydivs"

    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 552
    aget v1, p1, v1

    add-int/2addr v1, v3

    aget v2, p1, v4

    add-int/2addr v1, v2

    const/4 v2, 0x2

    aget v2, p1, v2

    invoke-direct {p0, p1, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonArray([III)Lorg/json/JSONArray;

    move-result-object p1

    const-string v1, "colors"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 553
    return-object v0
.end method

.method private getJsonRect(Landroid/graphics/Rect;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 520
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 521
    iget v1, p1, Landroid/graphics/Rect;->left:I

    const-string v2, "left"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 522
    iget v1, p1, Landroid/graphics/Rect;->top:I

    const-string v2, "top"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 523
    iget v1, p1, Landroid/graphics/Rect;->right:I

    const-string v2, "right"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 524
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    const-string v1, "bottom"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 525
    return-object v0
.end method

.method private getLayerDrawable(Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 8

    .line 389
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 390
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 391
    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    .line 393
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 394
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 395
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v4

    .line 396
    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 397
    move v4, v3

    .line 398
    :cond_0
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "__"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v7}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v5

    .line 399
    const-string v6, "id"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 400
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 394
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 402
    :cond_1
    const-string p2, "type"

    const-string v1, "layer"

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 403
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 404
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/LayerDrawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 405
    const-string p1, "padding"

    invoke-direct {p0, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonRect(Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 406
    :cond_2
    const-string p1, "layers"

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    goto :goto_1

    .line 407
    :catch_0
    move-exception p1

    .line 408
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 410
    :goto_1
    return-object v0
.end method

.method private getRippleDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;
    .locals 6

    .line 569
    invoke-direct {p0, p1, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getLayerDrawable(Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 570
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 572
    :try_start_0
    const-string v2, "android.graphics.drawable.RippleDrawable"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 573
    const-string v3, "mState"

    invoke-virtual {p0, v2, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 574
    const-string v4, "mask"

    const-string v5, "mMask"

    invoke-virtual {p0, v2, v5}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2, p3}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v1, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 575
    if-eqz v3, :cond_0

    .line 576
    const-string p1, "maxRadius"

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string p3, "mMaxRadius"

    invoke-virtual {p0, p2, p3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 577
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string p2, "mColor"

    invoke-virtual {p0, p1, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/ColorStateList;

    .line 578
    if-eqz p1, :cond_0

    .line 579
    const-string p2, "color"

    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/ExtractStyle;->getColorStateList(Landroid/content/res/ColorStateList;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 581
    :cond_0
    const-string p1, "ripple"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    goto :goto_0

    .line 582
    :catch_0
    move-exception p1

    .line 583
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 585
    :goto_0
    return-object v0
.end method

.method private getRotateDrawable(Landroid/graphics/drawable/RotateDrawable;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 8

    .line 481
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 483
    :try_start_0
    const-string v1, "type"

    const-string v2, "rotate"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 484
    invoke-virtual {p1}, Landroid/graphics/drawable/RotateDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    .line 485
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 486
    const-string v3, "drawable"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getDrawable"

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v4, 0x0

    invoke-virtual {p0, p1, p2, v4}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 487
    const-string p1, "pivotX"

    const-string p2, "mPivotX"

    invoke-virtual {p0, v2, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result p2

    float-to-double v3, p2

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 488
    const-string p1, "pivotXRel"

    const-string p2, "mPivotXRel"

    invoke-virtual {p0, v2, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 489
    const-string p1, "pivotY"

    const-string p2, "mPivotY"

    invoke-virtual {p0, v2, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result p2

    float-to-double v3, p2

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 490
    const-string p1, "pivotYRel"

    const-string p2, "mPivotYRel"

    invoke-virtual {p0, v2, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 491
    const-string p1, "fromDegrees"

    const-string p2, "mFromDegrees"

    invoke-virtual {p0, v2, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result p2

    float-to-double v3, p2

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 492
    const-string p1, "toDegrees"

    const-string p2, "mToDegrees"

    invoke-virtual {p0, v2, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result p2

    float-to-double v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    goto :goto_0

    .line 493
    :catch_0
    move-exception p1

    .line 494
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 496
    :goto_0
    return-object v0
.end method

.method private getStateIds(Ljava/lang/Object;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 601
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 602
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mSize"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 603
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mKeys"

    invoke-virtual {p0, v2, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 604
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mValues"

    invoke-virtual {p0, v3, v4}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 605
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 606
    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 607
    aget v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget v5, p1, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 609
    :cond_1
    return-object v0
.end method

.method private getStateListDrawable(Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 13

    .line 414
    const-string v0, "stateslist"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 416
    :try_start_0
    check-cast p1, Landroid/graphics/drawable/StateListDrawable;

    .line 417
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 419
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    const/4 v5, 0x0

    if-ge v3, v4, :cond_0

    .line 420
    const-class v3, Landroid/graphics/drawable/StateListDrawable;

    const-string v4, "getStateCount"

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    .line 422
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v3

    .line 423
    :goto_0
    move v4, v5

    :goto_1
    if-ge v4, v3, :cond_3

    .line 424
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 425
    const-class v7, Landroid/graphics/drawable/StateListDrawable;

    const-string v8, "getStateDrawable"

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v5

    invoke-virtual {v7, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v5

    invoke-virtual {v7, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/Drawable;

    .line 426
    const-class v8, Landroid/graphics/drawable/StateListDrawable;

    const-string v10, "getStateSet"

    new-array v11, v9, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v5

    invoke-virtual {v8, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-virtual {v8, p1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 427
    if-eqz v8, :cond_1

    .line 428
    const-string v9, "states"

    invoke-virtual {p0, v8}, Lorg/qtproject/qt/android/ExtractStyle;->getStatesList([I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 429
    :cond_1
    const-string v9, "drawable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "__"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_2

    invoke-virtual {p0, v8}, Lorg/qtproject/qt/android/ExtractStyle;->getStatesName([I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "state_pos_"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_2
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {p0, v7, v8, v10}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 430
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 423
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 432
    :cond_3
    const-string p2, "type"

    invoke-virtual {v1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 433
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 434
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/StateListDrawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 435
    const-string p1, "padding"

    invoke-direct {p0, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonRect(Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 436
    :cond_4
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    goto :goto_3

    .line 437
    :catch_0
    move-exception p1

    .line 438
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 440
    :goto_3
    return-object v1
.end method

.method private getStateTransitions(Ljava/lang/Object;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 589
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 590
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mSize"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 591
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mKeys"

    invoke-virtual {p0, v2, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    .line 592
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mValues"

    invoke-virtual {p0, v3, v4}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    .line 593
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 594
    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 595
    aget-wide v4, v2, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aget-wide v5, p1, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 597
    :cond_1
    return-object v0
.end method

.method private getVGroup(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 689
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 690
    const-string v1, "type"

    const-string v2, "group"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 691
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 692
    const-string v2, "mGroupName"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 693
    const-string v2, "mRotate"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "rotate"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 694
    const-string v2, "mPivotX"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "pivotX"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 695
    const-string v2, "mPivotY"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "pivotY"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 696
    const-string v2, "mScaleX"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "scaleX"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 697
    const-string v2, "mScaleY"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "scaleY"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 698
    const-string v2, "mTranslateX"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "translateX"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 699
    const-string v2, "mTranslateY"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "translateY"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 701
    const-string v2, "mChildren"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 702
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 703
    if-eqz p1, :cond_2

    .line 704
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 705
    invoke-virtual {v1, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 706
    invoke-direct {p0, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getVGroup(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 708
    :cond_0
    invoke-direct {p0, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getVPath(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 709
    :goto_1
    goto :goto_0

    .line 710
    :cond_1
    const-string p1, "children"

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 712
    :cond_2
    return-object v0
.end method

.method private getVPath(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 652
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 653
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 654
    const-string v2, "type"

    const-string v3, "path"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 655
    const-string v3, "mPathName"

    invoke-virtual {p0, v1, v3}, Lorg/qtproject/qt/android/ExtractStyle;->tryGetAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 656
    const-string v3, "mNodes"

    invoke-virtual {p0, v1, v3}, Lorg/qtproject/qt/android/ExtractStyle;->tryGetAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 657
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 658
    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 659
    array-length v6, v3

    move v7, v5

    :goto_0
    if-ge v7, v6, :cond_0

    aget-object v8, v3, v7

    .line 660
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 661
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "mType"

    invoke-virtual {p0, v10, v11}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 662
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "mParams"

    invoke-virtual {p0, v10, v11}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [F

    invoke-direct {p0, v8}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonArray([F)Lorg/json/JSONArray;

    move-result-object v8

    const-string v10, "params"

    invoke-virtual {v9, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 663
    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 659
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 665
    :cond_0
    const-string v2, "nodes"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 667
    :cond_1
    new-array v2, v5, [Ljava/lang/Class;

    const-string v3, "isClipPath"

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    const-string v3, "isClip"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 669
    const-string v2, "mStrokeColor"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->tryGetAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    if-nez v3, :cond_2

    .line 670
    return-object v0

    .line 672
    :cond_2
    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    const-string v3, "strokeColor"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 673
    const-string v2, "mStrokeWidth"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "strokeWidth"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 674
    const-string v2, "mFillColor"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    const-string v3, "fillColor"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 675
    const-string v2, "mStrokeAlpha"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "strokeAlpha"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 676
    const-string v2, "mFillRule"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    const-string v3, "fillRule"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 677
    const-string v2, "mFillAlpha"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "fillAlpha"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 678
    const-string v2, "mTrimPathStart"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "trimPathStart"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 679
    const-string v2, "mTrimPathEnd"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "trimPathEnd"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 680
    const-string v2, "mTrimPathOffset"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "trimPathOffset"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 681
    const-string v2, "mStrokeLineCap"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Paint$Cap;

    const-string v3, "strokeLineCap"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 682
    const-string v2, "mStrokeLineJoin"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Paint$Join;

    const-string v3, "strokeLineJoin"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 683
    const-string v2, "mStrokeMiterlimit"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result p1

    float-to-double v1, p1

    const-string p1, "strokeMiterlimit"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 684
    return-object v0
.end method

.method private getVectorDrawable(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 5

    .line 716
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 718
    :try_start_0
    const-string v1, "type"

    const-string v2, "vector"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 719
    const-string v1, "android.graphics.drawable.VectorDrawable"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 720
    const-string v2, "mVectorState"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 721
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 722
    const-string v2, "mTint"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ColorStateList;

    .line 723
    if-eqz v2, :cond_0

    .line 724
    const-string v3, "tintList"

    invoke-virtual {p0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getColorStateList(Landroid/content/res/ColorStateList;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 725
    const-string v2, "tintMode"

    const-string v3, "mTintMode"

    invoke-virtual {p0, v1, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 727
    :cond_0
    const-string v2, "mVPathRenderer"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 728
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 729
    const-string v2, "baseWidth"

    const-string v3, "mBaseWidth"

    invoke-virtual {p0, v1, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 730
    const-string v2, "baseHeight"

    const-string v3, "mBaseHeight"

    invoke-virtual {p0, v1, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 731
    const-string v2, "viewportWidth"

    const-string v3, "mViewportWidth"

    invoke-virtual {p0, v1, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 732
    const-string v2, "viewportHeight"

    const-string v3, "mViewportHeight"

    invoke-virtual {p0, v1, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 733
    const-string v2, "rootAlpha"

    const-string v3, "mRootAlpha"

    invoke-virtual {p0, v1, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 734
    const-string v2, "rootName"

    const-string v3, "mRootName"

    invoke-virtual {p0, v1, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 735
    const-string v2, "rootGroup"

    const-string v3, "mRootGroup"

    invoke-virtual {p0, v1, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/ExtractStyle;->getVGroup(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    goto :goto_0

    .line 736
    :catch_0
    move-exception p1

    .line 737
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 739
    :goto_0
    return-object v0
.end method

.method private obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;
    .locals 4

    .line 910
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 911
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->m_context:Landroid/content/Context;

    iget-object v3, p0, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 912
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 913
    iget p1, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    return-object p1
.end method

.method public static runIfNeeded(Landroid/content/Context;Z)V
    .locals 3

    .line 162
    sget-object v0, Lorg/qtproject/qt/android/ExtractStyle;->m_stylePath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 163
    return-void

    .line 164
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 165
    sget-boolean p1, Lorg/qtproject/qt/android/ExtractStyle;->m_missingDarkStyle:Z

    if-eqz p1, :cond_2

    .line 166
    new-instance p1, Lorg/qtproject/qt/android/ExtractStyle;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/qtproject/qt/android/ExtractStyle;->m_stylePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "darkUiMode/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lorg/qtproject/qt/android/ExtractStyle;->m_extractMinimal:Z

    invoke-direct {p1, p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 167
    sput-boolean v0, Lorg/qtproject/qt/android/ExtractStyle;->m_missingDarkStyle:Z

    goto :goto_0

    .line 169
    :cond_1
    sget-boolean p1, Lorg/qtproject/qt/android/ExtractStyle;->m_missingNormalStyle:Z

    if-eqz p1, :cond_2

    .line 170
    new-instance p1, Lorg/qtproject/qt/android/ExtractStyle;

    sget-object v1, Lorg/qtproject/qt/android/ExtractStyle;->m_stylePath:Ljava/lang/String;

    sget-boolean v2, Lorg/qtproject/qt/android/ExtractStyle;->m_extractMinimal:Z

    invoke-direct {p1, p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 171
    sput-boolean v0, Lorg/qtproject/qt/android/ExtractStyle;->m_missingNormalStyle:Z

    .line 173
    :cond_2
    :goto_0
    return-void
.end method

.method public static setup(Landroid/os/Bundle;)V
    .locals 5

    .line 148
    const-string v0, "extract.android.style"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 149
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/qtproject/qt/android/ExtractStyle;->m_stylePath:Ljava/lang/String;

    .line 151
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/qtproject/qt/android/ExtractStyle;->m_stylePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "darkUiMode/style.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 152
    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    const/4 v4, 0x0

    if-le v2, v3, :cond_0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    sput-boolean v0, Lorg/qtproject/qt/android/ExtractStyle;->m_missingDarkStyle:Z

    .line 154
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/qtproject/qt/android/ExtractStyle;->m_stylePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "style.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    xor-int/2addr v0, v1

    sput-boolean v0, Lorg/qtproject/qt/android/ExtractStyle;->m_missingNormalStyle:Z

    .line 156
    const-string v0, "extract.android.style.option"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 157
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    sput-boolean v1, Lorg/qtproject/qt/android/ExtractStyle;->m_extractMinimal:Z

    .line 159
    :cond_2
    return-void
.end method

.method private stateSetUnion([I[I)[I
    .locals 11

    .line 239
    :try_start_0
    array-length v0, p1

    .line 240
    array-length v1, p2

    .line 241
    add-int v2, v0, v1

    new-array v2, v2, [I

    .line 242
    nop

    .line 243
    nop

    .line 244
    nop

    .line 247
    iget-object v3, p0, Lorg/qtproject/qt/android/ExtractStyle;->viewDrawableStatesState:[I

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_0
    if-ge v5, v4, :cond_4

    aget v9, v3, v5

    .line 248
    if-ge v6, v0, :cond_0

    aget v10, p1, v6

    if-ne v10, v9, :cond_0

    .line 249
    add-int/lit8 v10, v8, 0x1

    aput v9, v2, v8

    .line 250
    add-int/lit8 v6, v6, 0x1

    move v8, v10

    goto :goto_1

    .line 251
    :cond_0
    if-ge v7, v1, :cond_1

    aget v10, p2, v7

    if-ne v10, v9, :cond_1

    .line 252
    add-int/lit8 v10, v8, 0x1

    aput v9, v2, v8

    .line 253
    add-int/lit8 v7, v7, 0x1

    move v8, v10

    .line 255
    :cond_1
    :goto_1
    const/4 v9, 0x1

    if-le v8, v9, :cond_3

    add-int/lit8 v9, v8, -0x1

    aget v9, v2, v9

    add-int/lit8 v10, v8, -0x2

    aget v10, v2, v10

    if-le v9, v10, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 257
    :cond_4
    return-object v2

    .line 258
    :catch_0
    move-exception p1

    .line 259
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 261
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method extractAbsSeekBar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V
    .locals 8

    .line 1464
    const v0, 0x101007b

    const-string v1, "QSlider"

    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1465
    invoke-virtual {p0, v1, v0}, Lorg/qtproject/qt/android/ExtractStyle;->extractProgressBarInfo(Lorg/json/JSONObject;I)V

    .line 1467
    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x1010142

    aput v4, v2, v3

    const/4 v3, 0x1

    const v5, 0x1010143

    aput v5, v2, v3

    .line 1471
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    .line 1472
    invoke-direct {p0, v0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1473
    invoke-direct {p0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1475
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1476
    if-eqz v3, :cond_0

    .line 1477
    const-string v4, "SeekBar_thumb"

    const-string v6, "16842875_SeekBar_thumb"

    const/4 v7, 0x0

    invoke-virtual {p0, v3, v6, v7}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1478
    :cond_0
    const-string v3, "SeekBar_thumbOffset"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1479
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1480
    const-string v0, "seekBarStyle"

    invoke-virtual {p1, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1483
    goto :goto_0

    .line 1481
    :catch_0
    move-exception p1

    .line 1482
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1484
    :goto_0
    return-void
.end method

.method extractCalendar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V
    .locals 19

    .line 1632
    move-object/from16 v1, p0

    const v0, 0x101035d

    const-string v2, "QCalendarWidget"

    invoke-virtual {v1, v0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1634
    const/16 v3, 0xb

    :try_start_0
    new-array v3, v3, [I

    const v4, 0x101033d

    const/4 v5, 0x0

    aput v4, v3, v5

    const v6, 0x1010343

    const/4 v7, 0x1

    aput v6, v3, v7

    const/4 v8, 0x2

    const v9, 0x1010342

    aput v9, v3, v8

    const/4 v8, 0x3

    const v10, 0x101033e

    aput v10, v3, v8

    const/4 v8, 0x4

    const v11, 0x1010341

    aput v11, v3, v8

    const/4 v8, 0x5

    const v12, 0x1010344

    aput v12, v3, v8

    const v8, 0x1010345

    const/4 v13, 0x6

    aput v8, v3, v13

    const/4 v14, 0x7

    const v15, 0x1010346

    aput v15, v3, v14

    const/16 v14, 0x8

    const v16, 0x1010347

    aput v16, v3, v14

    const/16 v14, 0x9

    const v17, 0x1010349

    aput v17, v3, v14

    const/16 v14, 0xa

    const v18, 0x1010348

    aput v18, v3, v14

    .line 1647
    invoke-static {v3}, Ljava/util/Arrays;->sort([I)V

    .line 1648
    invoke-direct {v1, v0, v3}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1649
    invoke-direct {v1, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1651
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    invoke-virtual {v0, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 1652
    if-eqz v14, :cond_0

    .line 1653
    const-string v15, "CalendarView_selectedDateVerticalBar"

    const-string v8, "16843613_CalendarView_selectedDateVerticalBar"

    const/4 v12, 0x0

    invoke-virtual {v1, v14, v8, v12}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v2, v15, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1655
    :cond_0
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    const/4 v12, -0x1

    invoke-virtual {v0, v8, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 1656
    const-string v14, "CalendarView_dateTextAppearance"

    invoke-virtual {v1, v8, v7}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearance(IZ)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v2, v14, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1657
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v0, v8, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 1658
    const-string v12, "CalendarView_weekDayTextAppearance"

    invoke-virtual {v1, v8, v7}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearance(IZ)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v2, v12, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1661
    const-string v8, "CalendarView_firstDayOfWeek"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v2, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1662
    const-string v4, "CalendarView_focusedMonthDateColor"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1663
    const-string v4, "CalendarView_selectedWeekBackgroundColor"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1664
    const-string v4, "CalendarView_showWeekNumber"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1665
    const-string v4, "CalendarView_shownWeekCount"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v0, v6, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1666
    const-string v4, "CalendarView_unfocusedMonthDateColor"

    const v6, 0x1010344

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1667
    const-string v4, "CalendarView_weekNumberColor"

    const v6, 0x1010345

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1668
    const-string v4, "CalendarView_weekSeparatorLineColor"

    const v6, 0x1010346

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1669
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1670
    const-string v0, "calendarViewStyle"

    move-object/from16 v3, p1

    invoke-virtual {v3, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1673
    goto :goto_0

    .line 1671
    :catch_0
    move-exception v0

    .line 1672
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1674
    :goto_0
    return-void
.end method

.method extractCheckedTextView(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    .line 1533
    const v0, 0x10103c8

    invoke-virtual {p0, v0, p1}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1535
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x1010108

    aput v3, v1, v2

    .line 1539
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    .line 1540
    const v2, 0x101043f

    invoke-direct {p0, v2, v1}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1541
    invoke-direct {p0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1543
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1544
    if-eqz v1, :cond_0

    .line 1545
    const-string v3, "CheckedTextView_checkMark"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_CheckedTextView_checkMark"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    invoke-virtual {p0, v1, p1, v4}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1546
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1549
    goto :goto_0

    .line 1547
    :catch_0
    move-exception p1

    .line 1548
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1550
    :goto_0
    return-object v0
.end method

.method extractCompoundButton(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1392
    invoke-virtual {p0, p2, p4}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p4

    .line 1394
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1395
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->m_context:Landroid/content/Context;

    iget-object v3, p0, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 1396
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1397
    new-array v2, v3, [I

    const v3, 0x1010107

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 1398
    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1399
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1400
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1403
    if-eqz v1, :cond_0

    .line 1404
    :try_start_0
    const-string v0, "CompoundButton_button"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "_CompoundButton_button"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p4, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1405
    :cond_0
    invoke-virtual {p1, p3}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object p1

    invoke-virtual {p1, p4}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1408
    goto :goto_0

    .line 1406
    :catch_0
    move-exception p1

    .line 1407
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1409
    :goto_0
    return-void
.end method

.method public extractImageViewInformation(ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 12

    .line 1348
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1350
    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Lorg/qtproject/qt/android/ExtractStyle;->extractViewInformation(ILorg/json/JSONObject;Ljava/lang/String;)V

    .line 1352
    const/16 p2, 0x8

    new-array p2, p2, [I

    const v1, 0x1010119

    const/4 v2, 0x0

    aput v1, p2, v2

    const/4 v3, 0x1

    const v4, 0x1010122

    aput v4, p2, v3

    const/4 v3, 0x2

    const v5, 0x101011e

    aput v5, p2, v3

    const/4 v3, 0x3

    const v5, 0x101011f

    aput v5, p2, v3

    const/4 v3, 0x4

    const v6, 0x1010120

    aput v6, p2, v3

    const/4 v3, 0x5

    const v7, 0x101011d

    aput v7, p2, v3

    const/4 v3, 0x6

    const v8, 0x1010123

    aput v8, p2, v3

    const/4 v3, 0x7

    const v9, 0x1010121

    aput v9, p2, v3

    .line 1363
    invoke-static {p2}, Ljava/util/Arrays;->sort([I)V

    .line 1364
    invoke-direct {p0, p1, p2}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 1365
    invoke-direct {p0, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object p2

    .line 1367
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1368
    if-eqz v1, :cond_0

    .line 1369
    const-string v10, "ImageView_src"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_ImageView_src"

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v11, 0x0

    invoke-virtual {p0, v1, p1, v11}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v10, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1371
    :cond_0
    const-string p1, "ImageView_baselineAlignBottom"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1372
    const-string p1, "ImageView_adjustViewBounds"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1373
    const-string p1, "ImageView_maxWidth"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const v4, 0x7fffffff

    invoke-virtual {v3, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1374
    const-string p1, "ImageView_maxHeight"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v3, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1375
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    invoke-virtual {v3, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 1376
    if-ltz p1, :cond_1

    .line 1377
    const-string v1, "ImageView_scaleType"

    iget-object v4, p0, Lorg/qtproject/qt/android/ExtractStyle;->sScaleTypeArray:[Ljava/lang/String;

    aget-object p1, v4, p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1379
    :cond_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v3, p1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 1380
    if-eqz p1, :cond_2

    .line 1381
    const-string v1, "ImageView_tint"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1383
    :cond_2
    const-string p1, "ImageView_cropToPadding"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {v3, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1384
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1387
    goto :goto_0

    .line 1385
    :catch_0
    move-exception p1

    .line 1386
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1388
    :goto_0
    return-object v0
.end method

.method extractListView(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V
    .locals 9

    .line 1608
    const v0, 0x1010074

    const-string v1, "QListView"

    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1610
    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [I

    const v3, 0x1010129

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v5, 0x1

    const v6, 0x101012a

    aput v6, v2, v5

    .line 1614
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    .line 1615
    invoke-direct {p0, v0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1616
    invoke-direct {p0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1618
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1619
    if-eqz v3, :cond_0

    .line 1620
    const-string v5, "ListView_divider"

    const-string v7, "16842868_ListView_divider"

    const/4 v8, 0x0

    invoke-virtual {p0, v3, v7, v8}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1622
    :cond_0
    const-string v3, "ListView_dividerHeight"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1624
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1625
    const-string v0, "listViewStyle"

    invoke-virtual {p1, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1628
    goto :goto_0

    .line 1626
    :catch_0
    move-exception p1

    .line 1627
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1629
    :goto_0
    return-void
.end method

.method extractProgressBar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1454
    const v0, 0x1010077

    invoke-virtual {p0, v0, p4}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p4

    .line 1456
    :try_start_0
    invoke-virtual {p0, p4, p2}, Lorg/qtproject/qt/android/ExtractStyle;->extractProgressBarInfo(Lorg/json/JSONObject;I)V

    .line 1457
    invoke-virtual {p1, p3}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object p1

    invoke-virtual {p1, p4}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1460
    goto :goto_0

    .line 1458
    :catch_0
    move-exception p1

    .line 1459
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1461
    :goto_0
    return-void
.end method

.method extractProgressBarInfo(Lorg/json/JSONObject;I)V
    .locals 11

    .line 1413
    const/4 v0, 0x7

    :try_start_0
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101013f

    aput v2, v0, v1

    const/4 v1, 0x1

    const v3, 0x101011f

    aput v3, v0, v1

    const/4 v1, 0x2

    const v4, 0x1010140

    aput v4, v0, v1

    const/4 v1, 0x3

    const v5, 0x1010120

    aput v5, v0, v1

    const/4 v1, 0x4

    const v6, 0x101013d

    aput v6, v0, v1

    const/4 v1, 0x5

    const v7, 0x101013c

    aput v7, v0, v1

    const/4 v1, 0x6

    const v8, 0x101013b

    aput v8, v0, v1

    .line 1425
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 1426
    invoke-direct {p0, p2, v0}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1427
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1429
    const-string v9, "ProgressBar_indeterminateDuration"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    const/16 v10, 0xfa0

    invoke-virtual {v1, v6, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p1, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1430
    const-string v6, "ProgressBar_minWidth"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/16 v9, 0x18

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {p1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1431
    const-string v2, "ProgressBar_maxWidth"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/16 v6, 0x30

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1432
    const-string v2, "ProgressBar_minHeight"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1433
    const-string v2, "ProgressBar_maxHeight"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/16 v4, 0x1c

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1434
    const-string v2, "ProgressBar_progress_id"

    const v3, 0x102000d

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1435
    const-string v2, "ProgressBar_secondaryProgress_id"

    const v3, 0x102000f

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1437
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1438
    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1439
    const-string v4, "ProgressBar_progressDrawable"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "_ProgressBar_progressDrawable"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v5, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1442
    :cond_0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1443
    if-eqz v0, :cond_1

    .line 1444
    const-string v2, "ProgressBar_indeterminateDrawable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "_ProgressBar_indeterminateDrawable"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p2, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1447
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1450
    goto :goto_0

    .line 1448
    :catch_0
    move-exception p1

    .line 1449
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1451
    :goto_0
    return-void
.end method

.method extractSwitch(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V
    .locals 16

    .line 1487
    move-object/from16 v1, p0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1489
    const/16 v2, 0xa

    :try_start_0
    new-array v2, v2, [I

    const v3, 0x1010142

    const/4 v4, 0x0

    aput v3, v2, v4

    const v5, 0x101036f

    const/4 v6, 0x1

    aput v5, v2, v6

    const/4 v7, 0x2

    const v8, 0x101036e

    aput v8, v2, v7

    const/4 v7, 0x3

    const v9, 0x1010124

    aput v9, v2, v7

    const/4 v7, 0x4

    const v10, 0x1010125

    aput v10, v2, v7

    const/4 v7, 0x5

    const v11, 0x1010370

    aput v11, v2, v7

    const/4 v7, 0x6

    const v12, 0x1010371

    aput v12, v2, v7

    const/4 v7, 0x7

    const v13, 0x1010372

    aput v13, v2, v7

    const/16 v7, 0x8

    const v14, 0x10104ad

    aput v14, v2, v7

    const/16 v7, 0x9

    const v15, 0x101044c

    aput v15, v2, v7

    .line 1501
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    .line 1502
    const v7, 0x101043f

    invoke-direct {v1, v7, v2}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 1503
    invoke-direct {v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1505
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1506
    const/4 v8, 0x0

    if-eqz v3, :cond_0

    .line 1507
    const-string v15, "Switch_thumb"

    const-string v6, "16843839_Switch_thumb"

    invoke-virtual {v1, v3, v6, v8}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v15, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1509
    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1510
    if-eqz v3, :cond_1

    .line 1511
    const-string v5, "Switch_track"

    const-string v6, "16843839_Switch_track"

    invoke-virtual {v1, v3, v6, v8}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1513
    :cond_1
    const-string v3, "Switch_textOn"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1514
    const-string v3, "Switch_textOff"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1515
    const-string v3, "Switch_switchMinWidth"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v7, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1516
    const-string v3, "Switch_switchPadding"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v7, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1517
    const-string v3, "Switch_thumbTextPadding"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v7, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1518
    const-string v3, "Switch_showText"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v7, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1519
    const-string v3, "Switch_splitTrack"

    const v5, 0x101044c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v7, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1522
    const v3, 0x101036e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v7, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 1523
    const-string v3, "Switch_switchTextAppearance"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearance(IZ)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1525
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 1526
    const-string v2, "switchStyle"

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1529
    goto :goto_0

    .line 1527
    :catch_0
    move-exception v0

    .line 1528
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1530
    :goto_0
    return-void
.end method

.method extractTabBar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V
    .locals 10

    .line 1716
    const v0, 0x10102f4

    const-string v1, "QTabBar"

    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1718
    const/4 v1, 0x3

    :try_start_0
    new-array v1, v1, [I

    const v2, 0x1010329

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v4, 0x1

    const v5, 0x101032a

    aput v5, v1, v4

    const/4 v4, 0x2

    const v6, 0x1010129

    aput v6, v1, v4

    .line 1723
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    .line 1724
    const v4, 0x10102f3

    invoke-direct {p0, v4, v1}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 1725
    invoke-direct {p0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1727
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1728
    if-eqz v6, :cond_0

    .line 1729
    const-string v7, "LinearLayout_divider"

    const-string v8, "16843507_LinearLayout_divider"

    const/4 v9, 0x0

    invoke-virtual {p0, v6, v8, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v0, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1730
    :cond_0
    const-string v6, "LinearLayout_showDividers"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v4, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v0, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1731
    const-string v2, "LinearLayout_dividerPadding"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v4, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1733
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 1734
    const-string v1, "actionBarTabBarStyle"

    invoke-virtual {p1, v1}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1737
    goto :goto_0

    .line 1735
    :catch_0
    move-exception p1

    .line 1736
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1738
    :goto_0
    return-void
.end method

.method public extractTextAppearance(I)Lorg/json/JSONObject;
    .locals 1

    .line 1051
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearance(IZ)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public extractTextAppearance(IZ)Lorg/json/JSONObject;
    .locals 4

    .line 1057
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 1067
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 1069
    if-eqz p2, :cond_0

    .line 1070
    iget-object p2, p0, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-virtual {p2, p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_0

    .line 1072
    :cond_0
    invoke-direct {p0, p1, v0}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1073
    :goto_0
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object p2

    .line 1074
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1076
    const v1, 0x1010095

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1077
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1078
    const-string v2, "TextAppearance_textSize"

    const/16 v3, 0xf

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1079
    :cond_1
    const v1, 0x1010097

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1080
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    .line 1081
    const-string v2, "TextAppearance_textStyle"

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1082
    :cond_2
    const v1, 0x1010098

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 1083
    if-eqz v1, :cond_3

    .line 1084
    const-string v2, "TextAppearance_textColor"

    invoke-virtual {p0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getColorStateList(Landroid/content/res/ColorStateList;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1085
    :cond_3
    const v1, 0x1010096

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1086
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1087
    const-string v2, "TextAppearance_typeface"

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1088
    :cond_4
    const v1, 0x101038c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1089
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 1090
    const-string v2, "TextAppearance_textAllCaps"

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1091
    :cond_5
    const v1, 0x101009a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 1092
    if-eqz v1, :cond_6

    .line 1093
    const-string v2, "TextAppearance_textColorHint"

    invoke-virtual {p0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getColorStateList(Landroid/content/res/ColorStateList;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1094
    :cond_6
    const v1, 0x101009b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 1095
    if-eqz v1, :cond_7

    .line 1096
    const-string v2, "TextAppearance_textColorLink"

    invoke-virtual {p0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getColorStateList(Landroid/content/res/ColorStateList;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1097
    :cond_7
    const v1, 0x1010099

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 1098
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1099
    const-string v1, "TextAppearance_textColorHighlight"

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1100
    :cond_8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1103
    goto :goto_1

    .line 1101
    :catch_0
    move-exception p1

    .line 1102
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1104
    :goto_1
    return-object v0

    nop

    :array_0
    .array-data 4
        0x1010095
        0x1010097
        0x1010098
        0x1010096
        0x101038c
        0x101009a
        0x101009b
        0x1010099
    .end array-data
.end method

.method public extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 1112
    const v0, 0x1010034

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;ILandroid/util/AttributeSet;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public extractTextAppearanceInformation(ILjava/lang/String;ILandroid/util/AttributeSet;)Lorg/json/JSONObject;
    .locals 30

    .line 1116
    move-object/from16 v1, p0

    move/from16 v2, p1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1117
    move-object/from16 v4, p2

    move-object/from16 v5, p4

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/qtproject/qt/android/ExtractStyle;->extractViewInformation(ILorg/json/JSONObject;Ljava/lang/String;Landroid/util/AttributeSet;)V

    .line 1119
    const/4 v4, -0x1

    move/from16 v5, p3

    if-ne v5, v4, :cond_0

    .line 1120
    const v5, 0x1010034

    .line 1123
    :cond_0
    :try_start_0
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 1124
    new-instance v7, Landroid/view/ContextThemeWrapper;

    iget-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_context:Landroid/content/Context;

    iget-object v9, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-direct {v7, v8, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 1125
    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v2, v6, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1128
    new-array v8, v9, [I

    const/4 v10, 0x0

    aput v5, v8, v10

    .line 1129
    iget v5, v6, Landroid/util/TypedValue;->data:I

    invoke-virtual {v7, v5, v8}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 1130
    invoke-virtual {v5, v10, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 1131
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 1133
    nop

    .line 1134
    nop

    .line 1135
    nop

    .line 1136
    nop

    .line 1137
    nop

    .line 1139
    const/4 v5, 0x2

    const/4 v11, 0x5

    const/4 v12, 0x3

    const/16 v13, 0xf

    const v14, 0x1010099

    const v15, 0x101038c

    const v16, 0x1010096

    const v17, 0x1010097

    const v18, 0x1010095

    if-eq v8, v4, :cond_1

    .line 1140
    new-array v4, v11, [I

    aput v18, v4, v10

    aput v17, v4, v9

    aput v16, v4, v5

    aput v15, v4, v12

    const/16 v19, 0x4

    aput v14, v4, v19

    .line 1147
    invoke-static {v4}, Ljava/util/Arrays;->sort([I)V

    .line 1148
    iget-object v11, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v11, v8, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 1149
    invoke-direct {v1, v4}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v4

    .line 1151
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v8, v11, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    .line 1152
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    const/4 v12, -0x1

    invoke-virtual {v8, v13, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    .line 1153
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v8, v5, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 1154
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v8, v12, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v12

    .line 1155
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v8, v4, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 1156
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 1139
    :cond_1
    move v4, v10

    move v12, v4

    const/4 v5, -0x1

    const/16 v11, 0xf

    const/4 v13, -0x1

    .line 1159
    :goto_0
    const/16 v8, 0x44

    new-array v8, v8, [I

    const v14, 0x101016b

    aput v14, v8, v10

    const v22, 0x1010168

    aput v22, v8, v9

    const v23, 0x1010165

    const/16 v20, 0x2

    aput v23, v8, v20

    const v20, 0x1010166

    const/16 v19, 0x3

    aput v20, v8, v19

    const/16 v20, 0x4

    const v23, 0x1010167

    aput v23, v8, v20

    const v20, 0x101016a

    const/16 v23, 0x5

    aput v20, v8, v23

    const/16 v20, 0x6

    const v23, 0x1010169

    aput v23, v8, v20

    const/16 v20, 0x7

    const v23, 0x101014e

    aput v23, v8, v20

    const/16 v20, 0x8

    const v23, 0x101015e

    aput v23, v8, v20

    const/16 v20, 0x9

    const v23, 0x10100b0

    aput v23, v8, v20

    const/16 v20, 0xa

    const v23, 0x10100b1

    aput v23, v8, v20

    const/16 v20, 0xb

    const v23, 0x101016f

    aput v23, v8, v20

    const/16 v20, 0xc

    const v23, 0x101016d

    aput v23, v8, v20

    const/16 v20, 0xd

    const v23, 0x1010170

    aput v23, v8, v20

    const/16 v20, 0xe

    const v23, 0x101016e

    aput v23, v8, v20

    const v20, 0x1010392

    const/16 v23, 0xf

    aput v20, v8, v23

    const/16 v20, 0x10

    const v23, 0x1010393

    aput v23, v8, v20

    const/16 v20, 0x11

    const v23, 0x1010153

    aput v23, v8, v20

    const/16 v20, 0x12

    const v24, 0x1010171

    aput v24, v8, v20

    const/16 v20, 0x13

    const v24, 0x1010362

    aput v24, v8, v20

    const/16 v20, 0x14

    const v25, 0x1010120

    aput v25, v8, v20

    const/16 v20, 0x15

    const v25, 0x1010154

    aput v25, v8, v20

    const/16 v20, 0x16

    const v25, 0x1010155

    aput v25, v8, v20

    const/16 v20, 0x17

    const v25, 0x1010156

    aput v25, v8, v20

    const/16 v20, 0x18

    const v25, 0x1010140

    aput v25, v8, v20

    const/16 v20, 0x19

    const v25, 0x1010157

    aput v25, v8, v20

    const/16 v20, 0x1a

    const v25, 0x101011f

    aput v25, v8, v20

    const/16 v20, 0x1b

    const v25, 0x1010158

    aput v25, v8, v20

    const/16 v20, 0x1c

    const v25, 0x1010159

    aput v25, v8, v20

    const/16 v20, 0x1d

    const v25, 0x101015a

    aput v25, v8, v20

    const/16 v20, 0x1e

    const v25, 0x101013f

    aput v25, v8, v20

    const/16 v20, 0x1f

    const v25, 0x10100af

    aput v25, v8, v20

    const/16 v20, 0x20

    const v25, 0x1010150

    aput v25, v8, v20

    const/16 v20, 0x21

    const v25, 0x101014f

    aput v25, v8, v20

    const/16 v20, 0x22

    const v25, 0x101015b

    aput v25, v8, v20

    const/16 v20, 0x23

    const v25, 0x101015d

    aput v25, v8, v20

    const/16 v20, 0x24

    const v25, 0x10100ab

    aput v25, v8, v20

    const/16 v20, 0x25

    const v25, 0x101021d

    aput v25, v8, v20

    const/16 v20, 0x26

    const v25, 0x101015f

    aput v25, v8, v20

    const/16 v20, 0x27

    const v25, 0x1010152

    aput v25, v8, v20

    const/16 v20, 0x28

    const v25, 0x1010160

    aput v25, v8, v20

    const/16 v20, 0x29

    const v26, 0x1010151

    aput v26, v8, v20

    const/16 v20, 0x2a

    const v26, 0x101016c

    aput v26, v8, v20

    const/16 v20, 0x2b

    const v26, 0x1010161

    aput v26, v8, v20

    const/16 v20, 0x2c

    const v26, 0x1010162

    aput v26, v8, v20

    const/16 v20, 0x2d

    const v26, 0x1010163

    aput v26, v8, v20

    const/16 v20, 0x2e

    const v26, 0x1010164

    aput v26, v8, v20

    const/16 v20, 0x2f

    const v26, 0x101000e

    aput v26, v8, v20

    const/16 v20, 0x30

    const v21, 0x1010099

    aput v21, v8, v20

    const/16 v20, 0x31

    const v26, 0x1010098

    aput v26, v8, v20

    const/16 v20, 0x32

    const v26, 0x101009a

    aput v26, v8, v20

    const/16 v20, 0x33

    const v26, 0x101009b

    aput v26, v8, v20

    const/16 v20, 0x34

    aput v18, v8, v20

    const/16 v20, 0x35

    aput v16, v8, v20

    const/16 v20, 0x36

    aput v17, v8, v20

    const/16 v20, 0x37

    const v26, 0x101015c

    aput v26, v8, v20

    const/16 v20, 0x38

    const v26, 0x1010217

    aput v26, v8, v20

    const/16 v20, 0x39

    const v26, 0x1010218

    aput v26, v8, v20

    const/16 v20, 0x3a

    const v26, 0x1010220

    aput v26, v8, v20

    const/16 v20, 0x3b

    const v26, 0x1010264

    aput v26, v8, v20

    const/16 v20, 0x3c

    const v26, 0x1010265

    aput v26, v8, v20

    const/16 v20, 0x3d

    const v26, 0x1010266

    aput v26, v8, v20

    const/16 v20, 0x3e

    const v26, 0x1010223

    aput v26, v8, v20

    const/16 v20, 0x3f

    const v26, 0x10102c5

    aput v26, v8, v20

    const/16 v20, 0x40

    const v27, 0x10102c6

    aput v27, v8, v20

    const/16 v20, 0x41

    const v28, 0x10102c7

    aput v28, v8, v20

    const/16 v20, 0x42

    const v29, 0x1010316

    aput v29, v8, v20

    const/16 v20, 0x43

    aput v15, v8, v20

    .line 1232
    invoke-static {v8}, Ljava/util/Arrays;->sort([I)V

    .line 1233
    iget v6, v6, Landroid/util/TypedValue;->data:I

    invoke-virtual {v7, v6, v8}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 1234
    invoke-direct {v1, v8}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v7

    .line 1236
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v6, v8, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    .line 1237
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v6, v11, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 1238
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    invoke-virtual {v6, v13, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 1239
    const v13, 0x1010099

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    invoke-virtual {v6, v13, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v12

    .line 1240
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    invoke-virtual {v6, v13, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 1242
    const v13, 0x1010098

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    invoke-virtual {v6, v13}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    .line 1243
    const v15, 0x101009a

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v15

    invoke-virtual {v6, v15}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v15

    .line 1244
    const v16, 0x101009b

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    .line 1246
    const-string v10, "TextAppearance_textSize"

    invoke-virtual {v3, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1247
    const-string v8, "TextAppearance_textStyle"

    invoke-virtual {v3, v8, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1248
    const-string v8, "TextAppearance_typeface"

    invoke-virtual {v3, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1249
    const-string v5, "TextAppearance_textColorHighlight"

    invoke-virtual {v3, v5, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1250
    const-string v5, "TextAppearance_textAllCaps"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1251
    if-eqz v13, :cond_2

    .line 1252
    const-string v4, "TextAppearance_textColor"

    invoke-virtual {v1, v13}, Lorg/qtproject/qt/android/ExtractStyle;->getColorStateList(Landroid/content/res/ColorStateList;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1253
    :cond_2
    if-eqz v15, :cond_3

    .line 1254
    const-string v4, "TextAppearance_textColorHint"

    invoke-virtual {v1, v15}, Lorg/qtproject/qt/android/ExtractStyle;->getColorStateList(Landroid/content/res/ColorStateList;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1255
    :cond_3
    if-eqz v9, :cond_4

    .line 1256
    const-string v4, "TextAppearance_textColorLink"

    invoke-virtual {v1, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getColorStateList(Landroid/content/res/ColorStateList;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1258
    :cond_4
    const-string v4, "TextView_editable"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1259
    const-string v4, "TextView_inputMethod"

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1260
    const-string v4, "TextView_numeric"

    const v5, 0x1010165

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1261
    const-string v4, "TextView_digits"

    const v5, 0x1010166

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1262
    const-string v4, "TextView_phoneNumber"

    const v5, 0x1010167

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1263
    const-string v4, "TextView_autoText"

    const v5, 0x101016a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1264
    const-string v4, "TextView_capitalize"

    const v5, 0x1010169

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, -0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1265
    const-string v4, "TextView_bufferType"

    const v5, 0x101014e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1266
    const-string v4, "TextView_selectAllOnFocus"

    const v5, 0x101015e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1267
    const-string v4, "TextView_autoLink"

    const v5, 0x10100b0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1268
    const-string v4, "TextView_linksClickable"

    const v5, 0x10100b1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1269
    const-string v4, "TextView_drawableLeft"

    const v5, 0x101016f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "_TextView_drawableLeft"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v1, v5, v8, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1270
    const-string v4, "TextView_drawableTop"

    const v5, 0x101016d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "_TextView_drawableTop"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v8, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1271
    const-string v4, "TextView_drawableRight"

    const v5, 0x1010170

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "_TextView_drawableRight"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v8, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1272
    const-string v4, "TextView_drawableBottom"

    const v5, 0x101016e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "_TextView_drawableBottom"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v8, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1273
    const-string v4, "TextView_drawableStart"

    const v5, 0x1010392

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "_TextView_drawableStart"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v8, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1274
    const-string v4, "TextView_drawableEnd"

    const v5, 0x1010393

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "_TextView_drawableEnd"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v8, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1275
    const-string v4, "TextView_maxLines"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, -0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1276
    const-string v4, "TextView_drawablePadding"

    const v5, 0x1010171

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 1279
    :try_start_1
    const-string v4, "TextView_textCursorDrawable"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "_TextView_textCursorDrawable"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v8, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1282
    goto :goto_1

    .line 1280
    :catch_0
    move-exception v0

    .line 1281
    :try_start_2
    const-string v4, "TextView_textCursorDrawable"

    iget-object v5, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iget-object v10, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v5, v8, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "_TextView_textCursorDrawable"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v8, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1284
    :goto_1
    const-string v4, "TextView_maxLines"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, -0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1285
    const-string v4, "TextView_maxHeight"

    const v5, 0x1010120

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, -0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1286
    const-string v4, "TextView_lines"

    const v5, 0x1010154

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, -0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1287
    const-string v4, "TextView_height"

    const v5, 0x1010155

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, -0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1288
    const-string v4, "TextView_minLines"

    const v5, 0x1010156

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, -0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1289
    const-string v4, "TextView_minHeight"

    const v5, 0x1010140

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, -0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1290
    const-string v4, "TextView_maxEms"

    const v5, 0x1010157

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, -0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1291
    const-string v4, "TextView_maxWidth"

    const v5, 0x101011f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, -0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1292
    const-string v4, "TextView_ems"

    const v5, 0x1010158

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, -0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1293
    const-string v4, "TextView_width"

    const v5, 0x1010159

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, -0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1294
    const-string v4, "TextView_minEms"

    const v5, 0x101015a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, -0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1295
    const-string v4, "TextView_minWidth"

    const v5, 0x101013f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, -0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1296
    const-string v4, "TextView_gravity"

    const v5, 0x10100af

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, -0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1297
    const-string v4, "TextView_hint"

    const v5, 0x1010150

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1298
    const-string v4, "TextView_text"

    const v5, 0x101014f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1299
    const-string v4, "TextView_scrollHorizontally"

    const v5, 0x101015b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1300
    const-string v4, "TextView_singleLine"

    const v5, 0x101015d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1301
    const-string v4, "TextView_ellipsize"

    const v5, 0x10100ab

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, -0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1302
    const-string v4, "TextView_marqueeRepeatLimit"

    const v5, 0x101021d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x3

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1303
    const-string v4, "TextView_includeFontPadding"

    const v5, 0x101015f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1304
    const-string v4, "TextView_cursorVisible"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1305
    const-string v4, "TextView_maxLength"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, -0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1306
    const-string v4, "TextView_textScaleX"

    const v5, 0x1010151

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    float-to-double v10, v5

    invoke-virtual {v3, v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1307
    const-string v4, "TextView_freezesText"

    const v5, 0x101016c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1308
    const-string v4, "TextView_shadowColor"

    const v5, 0x1010161

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1309
    const-string v4, "TextView_shadowDx"

    const v5, 0x1010162

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    float-to-double v10, v5

    invoke-virtual {v3, v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1310
    const-string v4, "TextView_shadowDy"

    const v5, 0x1010163

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    float-to-double v10, v5

    invoke-virtual {v3, v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1311
    const-string v4, "TextView_shadowRadius"

    const v5, 0x1010164

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    float-to-double v10, v5

    invoke-virtual {v3, v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1312
    const-string v4, "TextView_enabled"

    const v5, 0x101000e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x1

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1313
    const-string v4, "TextView_password"

    const v5, 0x101015c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1314
    const-string v4, "TextView_lineSpacingExtra"

    const v5, 0x1010217

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1315
    const-string v4, "TextView_lineSpacingMultiplier"

    const v5, 0x1010218

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    float-to-double v10, v5

    invoke-virtual {v3, v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1316
    const-string v4, "TextView_inputType"

    const v5, 0x1010220

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1317
    const-string v4, "TextView_imeOptions"

    const v5, 0x1010264

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1318
    const-string v4, "TextView_imeActionLabel"

    const v5, 0x1010265

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1319
    const-string v4, "TextView_imeActionId"

    const v5, 0x1010266

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1320
    const-string v4, "TextView_privateImeOptions"

    const v5, 0x1010223

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 1323
    :try_start_3
    const-string v4, "TextView_textSelectHandleLeft"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "_TextView_textSelectHandleLeft"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v8, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1326
    goto :goto_2

    .line 1324
    :catch_1
    move-exception v0

    .line 1325
    :try_start_4
    const-string v4, "TextView_textSelectHandleLeft"

    iget-object v5, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iget-object v10, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v5, v8, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "_TextView_textSelectHandleLeft"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v8, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 1329
    :goto_2
    :try_start_5
    const-string v4, "TextView_textSelectHandleRight"

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "_TextView_textSelectHandleRight"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v8, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1332
    goto :goto_3

    .line 1330
    :catch_2
    move-exception v0

    .line 1331
    :try_start_6
    const-string v4, "TextView_textSelectHandleRight"

    iget-object v5, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iget-object v10, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v5, v8, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "_TextView_textSelectHandleRight"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v8, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 1335
    :goto_3
    :try_start_7
    const-string v4, "TextView_textSelectHandle"

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "_TextView_textSelectHandle"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v8, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 1338
    goto :goto_4

    .line 1336
    :catch_3
    move-exception v0

    .line 1337
    :try_start_8
    const-string v4, "TextView_textSelectHandle"

    iget-object v5, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iget-object v10, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v5, v8, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_TextView_textSelectHandle"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1339
    :goto_4
    const-string v2, "TextView_textIsSelectable"

    const v4, 0x1010316

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v6, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1340
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 1343
    goto :goto_5

    .line 1341
    :catch_4
    move-exception v0

    move-object v2, v0

    .line 1342
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1344
    :goto_5
    return-object v3
.end method

.method public extractTextAppearanceInformation(ILjava/lang/String;Landroid/util/AttributeSet;)Lorg/json/JSONObject;
    .locals 1

    .line 1108
    const v0, 0x1010034

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;ILandroid/util/AttributeSet;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method extractToolBar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V
    .locals 12

    .line 1677
    const v0, 0x10104aa

    const-string v1, "QToolBar"

    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1679
    const/4 v2, 0x5

    :try_start_0
    new-array v2, v2, [I

    const v3, 0x10100d4

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v5, 0x1

    const v6, 0x101038a

    aput v6, v2, v5

    const/4 v5, 0x2

    const v7, 0x101038b

    aput v7, v2, v5

    const/4 v5, 0x3

    const v8, 0x1010129

    aput v8, v2, v5

    const/4 v5, 0x4

    const v9, 0x101032d

    aput v9, v2, v5

    .line 1686
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    .line 1687
    invoke-direct {p0, v0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1688
    invoke-direct {p0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1690
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1691
    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 1692
    const-string v10, "ActionBar_background"

    const-string v11, "16843946_ActionBar_background"

    invoke-virtual {p0, v3, v11, v5}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v10, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1694
    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1695
    if-eqz v3, :cond_1

    .line 1696
    const-string v6, "ActionBar_backgroundStacked"

    const-string v10, "16843946_ActionBar_backgroundStacked"

    invoke-virtual {p0, v3, v10, v5}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1698
    :cond_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1699
    if-eqz v3, :cond_2

    .line 1700
    const-string v6, "ActionBar_backgroundSplit"

    const-string v7, "16843946_ActionBar_backgroundSplit"

    invoke-virtual {p0, v3, v7, v5}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1702
    :cond_2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1703
    if-eqz v3, :cond_3

    .line 1704
    const-string v6, "ActionBar_divider"

    const-string v7, "16843946_ActionBar_divider"

    invoke-virtual {p0, v3, v7, v5}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1706
    :cond_3
    const-string v3, "ActionBar_itemPadding"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1708
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1709
    const-string v0, "actionBarStyle"

    invoke-virtual {p1, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1712
    goto :goto_0

    .line 1710
    :catch_0
    move-exception p1

    .line 1711
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1713
    :goto_0
    return-void
.end method

.method public extractViewInformation(ILorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    .line 924
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/qtproject/qt/android/ExtractStyle;->extractViewInformation(ILorg/json/JSONObject;Ljava/lang/String;Landroid/util/AttributeSet;)V

    .line 925
    return-void
.end method

.method public extractViewInformation(ILorg/json/JSONObject;Ljava/lang/String;Landroid/util/AttributeSet;)V
    .locals 28

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 929
    :try_start_0
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 930
    new-instance v6, Landroid/view/ContextThemeWrapper;

    iget-object v7, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_context:Landroid/content/Context;

    iget-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-direct {v6, v7, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 931
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v0, v5, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 933
    const/16 v5, 0x2e

    new-array v5, v5, [I

    const v6, 0x1010166

    const/4 v8, 0x0

    aput v6, v5, v8

    const v9, 0x10100d4

    aput v9, v5, v7

    const/4 v10, 0x2

    const v11, 0x10100d5

    aput v11, v5, v10

    const/4 v10, 0x3

    const v12, 0x10100d6

    aput v12, v5, v10

    const/4 v10, 0x4

    const v13, 0x10100d7

    aput v13, v5, v10

    const/4 v10, 0x5

    const v14, 0x10100d8

    aput v14, v5, v10

    const/4 v10, 0x6

    const v15, 0x10100d9

    aput v15, v5, v10

    const/4 v10, 0x7

    const v16, 0x10100d2

    aput v16, v5, v10

    const/16 v10, 0x8

    const v17, 0x10100d3

    aput v17, v5, v10

    const/16 v10, 0x9

    const v18, 0x10100d0

    aput v18, v5, v10

    const/16 v10, 0xa

    const v19, 0x10100d1

    aput v19, v5, v10

    const/16 v10, 0xb

    const v20, 0x10100dd

    aput v20, v5, v10

    const/16 v10, 0xc

    const v21, 0x10100da

    aput v21, v5, v10

    const/16 v10, 0xd

    const v22, 0x10100db

    aput v22, v5, v10

    const/16 v10, 0xe

    const v23, 0x10100e5

    aput v23, v5, v10

    const/16 v10, 0xf

    const v24, 0x10100e6

    aput v24, v5, v10

    const/16 v10, 0x10

    const v25, 0x10100e7

    aput v25, v5, v10

    const/16 v10, 0x11

    const v26, 0x10100e9

    aput v26, v5, v10

    const/16 v10, 0x12

    const v27, 0x10100dc

    aput v27, v5, v10

    const/16 v10, 0x13

    const v27, 0x10100e8

    aput v27, v5, v10

    const/16 v10, 0x14

    const v27, 0x1010273

    aput v27, v5, v10

    const/16 v10, 0x15

    const v27, 0x1010215

    aput v27, v5, v10

    const/16 v10, 0x16

    const v27, 0x101025e

    aput v27, v5, v10

    const/16 v10, 0x17

    const v27, 0x10100de

    aput v27, v5, v10

    const/16 v10, 0x18

    const v27, 0x10100df

    aput v27, v5, v10

    const/16 v10, 0x19

    const v27, 0x101007f

    aput v27, v5, v10

    const/16 v10, 0x1a

    const v27, 0x10102a8

    aput v27, v5, v10

    const/16 v10, 0x1b

    const v27, 0x10102a9

    aput v27, v5, v10

    const/16 v10, 0x1c

    const v27, 0x1010063

    aput v27, v5, v10

    const/16 v10, 0x1d

    const v27, 0x1010064

    aput v27, v5, v10

    const/16 v10, 0x1e

    const v27, 0x1010065

    aput v27, v5, v10

    const/16 v10, 0x1f

    const v27, 0x1010066

    aput v27, v5, v10

    const/16 v10, 0x20

    const v27, 0x1010067

    aput v27, v5, v10

    const/16 v10, 0x21

    const v27, 0x101024e

    aput v27, v5, v10

    const/16 v10, 0x22

    const v27, 0x1010216

    aput v27, v5, v10

    const/16 v10, 0x23

    const v27, 0x10102c4

    aput v27, v5, v10

    const/16 v10, 0x24

    const v27, 0x10100e1

    aput v27, v5, v10

    const/16 v10, 0x25

    const v27, 0x10100e2

    aput v27, v5, v10

    const/16 v10, 0x26

    const v27, 0x10100e3

    aput v27, v5, v10

    const/16 v10, 0x27

    const v27, 0x10100e4

    aput v27, v5, v10

    const/16 v10, 0x28

    const v27, 0x101013f

    aput v27, v5, v10

    const/16 v10, 0x29

    const v27, 0x1010140

    aput v27, v5, v10

    const/16 v10, 0x2a

    const v27, 0x101026f

    aput v27, v5, v10

    const/16 v10, 0x2b

    const v27, 0x10102c1

    aput v27, v5, v10

    const/16 v10, 0x2c

    const v27, 0x10103b3

    aput v27, v5, v10

    const/16 v10, 0x2d

    const v27, 0x10103b4

    aput v27, v5, v10

    .line 984
    invoke-static {v5}, Ljava/util/Arrays;->sort([I)V

    .line 986
    if-eqz v4, :cond_0

    .line 987
    iget-object v10, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v10, v4, v5, v0, v8}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    goto :goto_0

    .line 989
    :cond_0
    invoke-direct {v1, v0, v5}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 990
    :goto_0
    invoke-direct {v1, v5}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v5

    .line 992
    if-eqz v3, :cond_1

    .line 993
    const-string v10, "qtClass"

    invoke-virtual {v2, v10, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 995
    :cond_1
    const-string v3, "defaultBackgroundColor"

    iget v10, v1, Lorg/qtproject/qt/android/ExtractStyle;->defaultBackgroundColor:I

    invoke-virtual {v2, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 996
    const-string v3, "defaultTextColorPrimary"

    iget v10, v1, Lorg/qtproject/qt/android/ExtractStyle;->defaultTextColor:I

    invoke-virtual {v2, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 997
    const-string v3, "TextView_digits"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 998
    const-string v3, "View_background"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "_View_background"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v1, v6, v9, v10}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 999
    const-string v3, "View_padding"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    const/4 v9, -0x1

    invoke-virtual {v4, v6, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1000
    const-string v3, "View_paddingLeft"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1001
    const-string v3, "View_paddingTop"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1002
    const-string v3, "View_paddingRight"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1003
    const-string v3, "View_paddingBottom"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1004
    const-string v3, "View_paddingBottom"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1005
    const-string v3, "View_scrollY"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1006
    const-string v3, "View_id"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1007
    const-string v3, "View_tag"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1008
    const-string v3, "View_fitsSystemWindows"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1009
    const-string v3, "View_focusable"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1010
    const-string v3, "View_focusableInTouchMode"

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1011
    const-string v3, "View_clickable"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1012
    const-string v3, "View_longClickable"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1013
    const-string v3, "View_saveEnabled"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1014
    const-string v3, "View_duplicateParentState"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1015
    const-string v3, "View_visibility"

    const v6, 0x10100dc

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1016
    const-string v3, "View_drawingCacheQuality"

    const v6, 0x10100e8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1017
    const-string v3, "View_contentDescription"

    const v6, 0x1010273

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1018
    const-string v3, "View_soundEffectsEnabled"

    const v6, 0x1010215

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1019
    const-string v3, "View_hapticFeedbackEnabled"

    const v6, 0x101025e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1020
    const-string v3, "View_scrollbars"

    const v6, 0x10100de

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1021
    const-string v3, "View_fadingEdge"

    const v6, 0x10100df

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1022
    const-string v3, "View_scrollbarStyle"

    const v6, 0x101007f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1023
    const-string v3, "View_scrollbarFadeDuration"

    const v6, 0x10102a8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1024
    const-string v3, "View_scrollbarDefaultDelayBeforeFade"

    const v6, 0x10102a9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1025
    const-string v3, "View_scrollbarSize"

    const v6, 0x1010063

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1026
    const-string v3, "View_scrollbarThumbHorizontal"

    const v6, 0x1010064

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "_View_scrollbarThumbHorizontal"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v6, v11, v10}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1027
    const-string v3, "View_scrollbarThumbVertical"

    const v6, 0x1010065

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "_View_scrollbarThumbVertical"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v6, v11, v10}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1028
    const-string v3, "View_scrollbarTrackHorizontal"

    const v6, 0x1010066

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "_View_scrollbarTrackHorizontal"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v6, v11, v10}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1029
    const-string v3, "View_scrollbarTrackVertical"

    const v6, 0x1010067

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_View_scrollbarTrackVertical"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6, v0, v10}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1030
    const-string v0, "View_isScrollContainer"

    const v3, 0x101024e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1031
    const-string v0, "View_keepScreenOn"

    const v3, 0x1010216

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1032
    const-string v0, "View_filterTouchesWhenObscured"

    const v3, 0x10102c4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1033
    const-string v0, "View_nextFocusLeft"

    const v3, 0x10100e1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v3, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1034
    const-string v0, "View_nextFocusRight"

    const v3, 0x10100e2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v3, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1035
    const-string v0, "View_nextFocusUp"

    const v3, 0x10100e3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v3, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1036
    const-string v0, "View_nextFocusDown"

    const v3, 0x10100e4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v3, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1037
    const-string v0, "View_minWidth"

    const v3, 0x101013f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1038
    const-string v0, "View_minHeight"

    const v3, 0x1010140

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1039
    const-string v0, "View_onClick"

    const v3, 0x101026f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1040
    const-string v0, "View_overScrollMode"

    const v3, 0x10102c1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v3, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1041
    const-string v0, "View_paddingStart"

    const v3, 0x10103b3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1042
    const-string v0, "View_paddingEnd"

    const v3, 0x10103b4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1043
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1046
    goto :goto_1

    .line 1044
    :catch_0
    move-exception v0

    .line 1045
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1047
    :goto_1
    return-void
.end method

.method getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 266
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 267
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    return-object p1

    .line 269
    :catch_0
    move-exception p1

    .line 270
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 272
    const/4 p1, 0x0

    return-object p1
.end method

.method getColorStateList(Landroid/content/res/ColorStateList;)Lorg/json/JSONObject;
    .locals 4

    .line 294
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 296
    :try_start_0
    const-string v1, "EMPTY_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->EMPTY_STATE_SET:[I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 297
    const-string v1, "WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 298
    const-string v1, "SELECTED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->SELECTED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 299
    const-string v1, "SELECTED_WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 300
    const-string v1, "FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 301
    const-string v1, "FOCUSED_WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 302
    const-string v1, "FOCUSED_SELECTED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->FOCUSED_SELECTED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 303
    const-string v1, "FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 304
    const-string v1, "ENABLED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 305
    const-string v1, "ENABLED_WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 306
    const-string v1, "ENABLED_SELECTED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_SELECTED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 307
    const-string v1, "ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 308
    const-string v1, "ENABLED_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 309
    const-string v1, "ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 310
    const-string v1, "ENABLED_FOCUSED_SELECTED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 311
    const-string v1, "ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 312
    const-string v1, "PRESSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 313
    const-string v1, "PRESSED_WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 314
    const-string v1, "PRESSED_SELECTED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_SELECTED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 315
    const-string v1, "PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 316
    const-string v1, "PRESSED_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 317
    const-string v1, "PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 318
    const-string v1, "PRESSED_FOCUSED_SELECTED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_FOCUSED_SELECTED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 319
    const-string v1, "PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 320
    const-string v1, "PRESSED_ENABLED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 321
    const-string v1, "PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 322
    const-string v1, "PRESSED_ENABLED_SELECTED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_SELECTED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 323
    const-string v1, "PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 324
    const-string v1, "PRESSED_ENABLED_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 325
    const-string v1, "PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 326
    const-string v1, "PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 327
    const-string v1, "PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    goto :goto_0

    .line 328
    :catch_0
    move-exception p1

    .line 329
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 332
    :goto_0
    return-object v0
.end method

.method public getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;
    .locals 12

    .line 743
    const-string v0, "color"

    const/4 v1, 0x0

    if-eqz p1, :cond_1e

    iget-boolean v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->m_minimal:Z

    if-eqz v2, :cond_0

    goto/16 :goto_a

    .line 746
    :cond_0
    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->m_drawableCache:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/qtproject/qt/android/ExtractStyle$DrawableCache;

    .line 747
    if-eqz v2, :cond_2

    .line 748
    iget-object v3, v2, Lorg/qtproject/qt/android/ExtractStyle$DrawableCache;->drawable:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 749
    iget-object p1, v2, Lorg/qtproject/qt/android/ExtractStyle$DrawableCache;->object:Lorg/json/JSONObject;

    return-object p1

    .line 751
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Different drawable objects points to the same file name \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Qt JAVA"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 754
    nop

    .line 755
    instance-of v3, p1, Landroid/graphics/Bitmap;

    const/16 v4, 0x64

    const-string v5, "type"

    if-eqz v3, :cond_3

    .line 756
    move-object v1, p1

    check-cast v1, Landroid/graphics/Bitmap;

    goto/16 :goto_7

    .line 758
    :cond_3
    instance-of v3, p1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v6, 0x0

    if-eqz v3, :cond_5

    .line 759
    move-object p3, p1

    check-cast p3, Landroid/graphics/drawable/BitmapDrawable;

    .line 760
    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 762
    :try_start_0
    const-string v0, "gravity"

    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getGravity()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 763
    const-string v0, "tileModeX"

    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getTileModeX()Landroid/graphics/Shader$TileMode;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 764
    const-string v0, "tileModeY"

    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getTileModeY()Landroid/graphics/Shader$TileMode;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 765
    const-string v0, "antialias"

    const-class v3, Landroid/graphics/drawable/BitmapDrawable;

    const-string v7, "hasAntiAlias"

    new-array v8, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v3, p3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 766
    const-string v0, "mipMap"

    const-class v3, Landroid/graphics/drawable/BitmapDrawable;

    const-string v7, "hasMipMap"

    new-array v8, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v3, p3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 767
    const-string v0, "tintMode"

    const-class v3, Landroid/graphics/drawable/BitmapDrawable;

    const-string v7, "getTintMode"

    new-array v8, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v3, p3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 768
    const-class v0, Landroid/graphics/drawable/BitmapDrawable;

    const-string v3, "getTint"

    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, p3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/res/ColorStateList;

    .line 769
    if-eqz p3, :cond_4

    .line 770
    const-string v0, "tintList"

    invoke-virtual {p0, p3}, Lorg/qtproject/qt/android/ExtractStyle;->getColorStateList(Landroid/content/res/ColorStateList;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {v2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    :cond_4
    goto :goto_0

    .line 771
    :catch_0
    move-exception p3

    .line 772
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 774
    :goto_0
    goto/16 :goto_7

    .line 776
    :cond_5
    instance-of v3, p1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v3, :cond_6

    .line 777
    invoke-direct {p0, p1, p2, p3}, Lorg/qtproject/qt/android/ExtractStyle;->getRippleDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 779
    :cond_6
    instance-of v3, p1, Landroid/graphics/drawable/AnimatedStateListDrawable;

    if-eqz v3, :cond_7

    .line 780
    invoke-direct {p0, p1, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getAnimatedStateListDrawable(Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 782
    :cond_7
    instance-of v3, p1, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v3, :cond_8

    .line 783
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/ExtractStyle;->getVectorDrawable(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 785
    :cond_8
    instance-of v3, p1, Landroid/graphics/drawable/ScaleDrawable;

    if-eqz v3, :cond_9

    .line 786
    check-cast p1, Landroid/graphics/drawable/ScaleDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 788
    :cond_9
    instance-of v3, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_a

    .line 789
    invoke-direct {p0, p1, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getLayerDrawable(Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 791
    :cond_a
    instance-of v3, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v3, :cond_b

    .line 792
    invoke-direct {p0, p1, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getStateListDrawable(Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 794
    :cond_b
    instance-of v3, p1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v3, :cond_c

    .line 795
    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/ExtractStyle;->getGradientDrawable(Landroid/graphics/drawable/GradientDrawable;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 797
    :cond_c
    instance-of v3, p1, Landroid/graphics/drawable/RotateDrawable;

    if-eqz v3, :cond_d

    .line 798
    check-cast p1, Landroid/graphics/drawable/RotateDrawable;

    invoke-direct {p0, p1, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getRotateDrawable(Landroid/graphics/drawable/RotateDrawable;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 800
    :cond_d
    instance-of v3, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v3, :cond_e

    .line 801
    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {p0, p1, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getAnimationDrawable(Landroid/graphics/drawable/AnimationDrawable;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 803
    :cond_e
    instance-of v3, p1, Landroid/graphics/drawable/ClipDrawable;

    const-string v7, "mDrawable"

    const-string v8, "drawable"

    const-string v9, "padding"

    if-eqz v3, :cond_11

    .line 805
    :try_start_1
    const-string v0, "clipDrawable"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 806
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ClipDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 807
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3, v7}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v2, v8, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 808
    if-eqz p3, :cond_f

    .line 809
    invoke-direct {p0, p3}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonRect(Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v2, v9, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 811
    :cond_f
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 812
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 813
    invoke-direct {p0, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonRect(Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v2, v9, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 817
    :cond_10
    :goto_1
    goto :goto_2

    .line 815
    :catch_1
    move-exception p1

    .line 816
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 818
    :goto_2
    return-object v2

    .line 820
    :cond_11
    instance-of v3, p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v10, 0x1

    if-eqz v3, :cond_14

    .line 821
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v10, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 822
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 823
    invoke-virtual {p1, v6, v6, v10, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 824
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 826
    :try_start_2
    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 827
    invoke-virtual {p2, v6, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p2

    invoke-virtual {v2, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 828
    if-eqz p3, :cond_12

    .line 829
    invoke-direct {p0, p3}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonRect(Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v2, v9, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 831
    :cond_12
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 832
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 833
    invoke-direct {p0, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonRect(Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v2, v9, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 837
    :cond_13
    :goto_3
    goto :goto_4

    .line 835
    :catch_2
    move-exception p1

    .line 836
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 838
    :goto_4
    return-object v2

    .line 840
    :cond_14
    instance-of v0, p1, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_16

    .line 842
    :try_start_3
    move-object p3, p1

    check-cast p3, Landroid/graphics/drawable/InsetDrawable;

    .line 843
    const-class v0, Landroid/graphics/drawable/InsetDrawable;

    const-string v3, "mState"

    invoke-virtual {p0, v0, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 844
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 845
    invoke-virtual {p3, v3}, Landroid/graphics/drawable/InsetDrawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p3

    .line 846
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p0, v6, v7}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz p3, :cond_15

    goto :goto_5

    :cond_15
    move-object v3, v1

    :goto_5
    invoke-virtual {p0, v0, p2, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return-object p1

    .line 847
    :catch_3
    move-exception p3

    .line 848
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 849
    goto :goto_7

    .line 851
    :cond_16
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 852
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 853
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 854
    const/16 v11, 0x2710

    invoke-virtual {v0, v11}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 855
    if-lt v3, v10, :cond_17

    if-ge v7, v10, :cond_18

    .line 856
    :cond_17
    nop

    .line 857
    move v3, v4

    move v7, v3

    .line 859
    :cond_18
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 860
    invoke-virtual {v0, v6, v6, v3, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 861
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 862
    instance-of v3, p1, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v3, :cond_1b

    .line 863
    move-object v3, p1

    check-cast v3, Landroid/graphics/drawable/NinePatchDrawable;

    .line 865
    :try_start_4
    const-string v6, "9patch"

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 866
    invoke-virtual {p0, v10, p2, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 867
    if-eqz p3, :cond_19

    .line 868
    invoke-direct {p0, p3}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonRect(Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {v2, v9, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6

    .line 870
    :cond_19
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 871
    invoke-virtual {v3, p3}, Landroid/graphics/drawable/NinePatchDrawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 872
    invoke-direct {p0, p3}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonRect(Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {v2, v9, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 875
    :cond_1a
    :goto_6
    const-string p3, "chunkInfo"

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/ExtractStyle;->findPatchesMarings(Landroid/graphics/drawable/Drawable;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 876
    return-object v2

    .line 877
    :catch_4
    move-exception p3

    .line 878
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 886
    :cond_1b
    move-object v1, v10

    :goto_7
    :try_start_5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/qtproject/qt/android/ExtractStyle;->m_extractPath:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".png"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 887
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 888
    if-eqz v1, :cond_1c

    .line 889
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1, v0, v4, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 890
    :cond_1c
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 893
    goto :goto_8

    .line 891
    :catch_5
    move-exception p3

    .line 892
    invoke-virtual {p3}, Ljava/io/IOException;->printStackTrace()V

    .line 895
    :goto_8
    :try_start_6
    const-string p3, "image"

    invoke-virtual {v2, v5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 896
    const-string p3, "path"

    invoke-virtual {v2, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 897
    if-eqz v1, :cond_1d

    .line 898
    const-string p3, "width"

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v2, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 899
    const-string p3, "height"

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v2, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 901
    :cond_1d
    iget-object p3, p0, Lorg/qtproject/qt/android/ExtractStyle;->m_drawableCache:Ljava/util/HashMap;

    new-instance v0, Lorg/qtproject/qt/android/ExtractStyle$DrawableCache;

    invoke-direct {v0, v2, p1}, Lorg/qtproject/qt/android/ExtractStyle$DrawableCache;-><init>(Lorg/json/JSONObject;Ljava/lang/Object;)V

    invoke-virtual {p3, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    .line 904
    goto :goto_9

    .line 902
    :catch_6
    move-exception p1

    .line 903
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 905
    :goto_9
    return-object v2

    .line 744
    :cond_1e
    :goto_a
    return-object v1
.end method

.method getStatesList([I)Lorg/json/JSONObject;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 336
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 337
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    aget v4, p1, v3

    .line 338
    nop

    .line 339
    move v5, v2

    :goto_1
    iget-object v6, p0, Lorg/qtproject/qt/android/ExtractStyle;->DrawableStates:[I

    array-length v7, v6

    const/4 v8, 0x1

    if-ge v5, v7, :cond_2

    .line 340
    aget v7, v6, v5

    if-ne v4, v7, :cond_0

    .line 341
    iget-object v6, p0, Lorg/qtproject/qt/android/ExtractStyle;->DrawableStatesLabels:[Ljava/lang/String;

    aget-object v5, v6, v5

    invoke-virtual {v0, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 342
    nop

    .line 343
    move v5, v8

    goto :goto_2

    .line 344
    :cond_0
    aget v6, v6, v5

    neg-int v6, v6

    if-ne v4, v6, :cond_1

    .line 345
    iget-object v6, p0, Lorg/qtproject/qt/android/ExtractStyle;->DrawableStatesLabels:[Ljava/lang/String;

    aget-object v5, v6, v5

    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 347
    nop

    .line 348
    move v5, v8

    goto :goto_2

    .line 339
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    move v5, v2

    .line 351
    :goto_2
    if-nez v5, :cond_4

    .line 352
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unhandled_state_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-lez v4, :cond_3

    goto :goto_3

    :cond_3
    move v8, v2

    :goto_3
    invoke-virtual {v0, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 337
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 355
    :cond_5
    return-object v0
.end method

.method getStatesName([I)Ljava/lang/String;
    .locals 10

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_7

    aget v4, p1, v3

    .line 361
    nop

    .line 362
    move v5, v2

    :goto_1
    iget-object v6, p0, Lorg/qtproject/qt/android/ExtractStyle;->DrawableStates:[I

    array-length v7, v6

    const/4 v8, 0x1

    if-ge v5, v7, :cond_4

    .line 363
    aget v7, v6, v5

    const-string v9, "__"

    if-ne v4, v7, :cond_1

    .line 364
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 365
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    :cond_0
    iget-object v6, p0, Lorg/qtproject/qt/android/ExtractStyle;->DrawableStatesLabels:[Ljava/lang/String;

    aget-object v5, v6, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    nop

    .line 368
    goto :goto_2

    .line 369
    :cond_1
    aget v6, v6, v5

    neg-int v6, v6

    if-ne v4, v6, :cond_3

    .line 370
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 371
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    :cond_2
    iget-object v6, p0, Lorg/qtproject/qt/android/ExtractStyle;->DisableDrawableStatesLabels:[Ljava/lang/String;

    aget-object v5, v6, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    nop

    .line 374
    goto :goto_2

    .line 362
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    move v8, v2

    .line 377
    :goto_2
    if-nez v8, :cond_6

    .line 378
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 379
    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    :cond_5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 360
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 383
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_8

    .line 384
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 385
    :cond_8
    const-string p1, "empty"

    return-object p1
.end method

.method tryGetAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 276
    if-nez p1, :cond_0

    .line 277
    const/4 p1, 0x0

    return-object p1

    .line 280
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 281
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    return-object v0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 285
    invoke-virtual {p0, v3, p2}, Lorg/qtproject/qt/android/ExtractStyle;->tryGetAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 286
    if-eqz v3, :cond_1

    .line 287
    return-object v3

    .line 284
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 290
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/qtproject/qt/android/ExtractStyle;->tryGetAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    return-object p1
.end method
