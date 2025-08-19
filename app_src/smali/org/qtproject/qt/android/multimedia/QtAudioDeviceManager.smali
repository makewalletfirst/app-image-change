.class public Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;
.super Ljava/lang/Object;
.source "QtAudioDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager$AudioDevicesReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "QtAudioDeviceManager"

.field private static final m_audioDevicesReceiver:Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager$AudioDevicesReceiver;

.field private static final m_audioFormat:I = 0x2

.field private static m_audioManager:Landroid/media/AudioManager; = null

.field private static final m_bufferSize:I

.field private static final m_channels:I = 0x2

.field private static m_isStreaming:Z = false

.field private static m_recorder:Landroid/media/AudioRecord; = null

.field private static final m_sampleRate:I = 0x1f40

.field private static m_streamPlayer:Landroid/media/AudioTrack;

.field private static m_streamingThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_audioManager:Landroid/media/AudioManager;

    .line 27
    new-instance v1, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager$AudioDevicesReceiver;

    invoke-direct {v1, v0}, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager$AudioDevicesReceiver;-><init>(Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager$1;)V

    sput-object v1, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_audioDevicesReceiver:Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager$AudioDevicesReceiver;

    .line 28
    sput-object v0, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_recorder:Landroid/media/AudioRecord;

    .line 29
    sput-object v0, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_streamPlayer:Landroid/media/AudioTrack;

    .line 30
    sput-object v0, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_streamingThread:Ljava/lang/Thread;

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_isStreaming:Z

    .line 35
    const/16 v0, 0x1f40

    const/4 v1, 0x2

    invoke-static {v0, v1, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    sput v0, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_bufferSize:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .line 23
    invoke-static {}, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->streamSound()V

    return-void
.end method

.method private static audioDeviceTypeToString(I)Ljava/lang/String;
    .locals 0

    .line 130
    packed-switch p0, :pswitch_data_0

    .line 170
    :pswitch_0
    const-string p0, "Unknown-Type"

    return-object p0

    .line 154
    :pswitch_1
    const-string p0, "IP"

    return-object p0

    .line 133
    :pswitch_2
    const-string p0, "AUX Line"

    return-object p0

    .line 160
    :pswitch_3
    const-string p0, "TV tuner"

    return-object p0

    .line 148
    :pswitch_4
    const-string p0, "FM TUNER"

    return-object p0

    .line 140
    :pswitch_5
    const-string p0, "Built in microphone"

    return-object p0

    .line 146
    :pswitch_6
    const-string p0, "FM"

    return-object p0

    .line 144
    :pswitch_7
    const-string p0, "Dock"

    return-object p0

    .line 162
    :pswitch_8
    const-string p0, "USB accessory"

    return-object p0

    .line 152
    :pswitch_9
    const-string p0, "HDMI ARC"

    return-object p0

    .line 150
    :pswitch_a
    const-string p0, "HDMI"

    return-object p0

    .line 136
    :pswitch_b
    const-string p0, "Bluetooth"

    return-object p0

    .line 158
    :pswitch_c
    const-string p0, "Line digital"

    return-object p0

    .line 156
    :pswitch_d
    const-string p0, "Line analog"

    return-object p0

    .line 164
    :pswitch_e
    const-string p0, "Wired headphones"

    return-object p0

    .line 166
    :pswitch_f
    const-string p0, "Wired headset"

    return-object p0

    .line 142
    :pswitch_10
    const-string p0, "Built in speaker"

    return-object p0

    .line 138
    :pswitch_11
    const-string p0, "Built in earpiece"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static getAudioDevices(I)[Ljava/lang/String;
    .locals 10

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_5

    .line 179
    nop

    .line 180
    nop

    .line 181
    sget-object v1, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p0}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v6, p0, v3

    .line 182
    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v7

    invoke-static {v7}, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->audioDeviceTypeToString(I)Ljava/lang/String;

    move-result-object v7

    .line 184
    invoke-static {v2}, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->audioDeviceTypeToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 186
    goto :goto_2

    .line 187
    :cond_0
    const/16 v8, 0xf

    invoke-static {v8}, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->audioDeviceTypeToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_2

    .line 188
    if-eqz v4, :cond_1

    .line 195
    goto :goto_2

    .line 197
    :cond_1
    move v4, v9

    goto :goto_1

    .line 198
    :cond_2
    invoke-static {v6}, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->isBluetoothDevice(Landroid/media/AudioDeviceInfo;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 199
    if-eqz v5, :cond_3

    .line 203
    goto :goto_2

    .line 205
    :cond_3
    move v5, v9

    .line 208
    :cond_4
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 208
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 213
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 214
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 215
    return-object p0
.end method

.method private static getAudioInputDevices()[Ljava/lang/String;
    .locals 1

    .line 79
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->getAudioDevices(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAudioOutputDevices()[Ljava/lang/String;
    .locals 1

    .line 74
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->getAudioDevices(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isBluetoothDevice(Landroid/media/AudioDeviceInfo;)Z
    .locals 0

    .line 84
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    .line 89
    const/4 p0, 0x0

    return p0

    .line 87
    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isMicrophoneMute()Z
    .locals 1

    .line 125
    sget-object v0, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    return v0
.end method

.method public static native onAudioInputDevicesUpdated()V
.end method

.method public static native onAudioOutputDevicesUpdated()V
.end method

.method public static registerAudioHeadsetStateReceiver(Landroid/content/Context;)V
    .locals 2

    .line 51
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 52
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    const-string v1, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECT_REQUESTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    const-string v1, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    sget-object v1, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_audioDevicesReceiver:Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager$AudioDevicesReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 65
    return-void
.end method

.method private static setAudioInput(Landroid/media/MediaRecorder;I)Z
    .locals 7

    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-ge v0, v2, :cond_0

    .line 96
    return v1

    .line 98
    :cond_0
    sget-object v0, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_audioManager:Landroid/media/AudioManager;

    .line 99
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    .line 101
    array-length v3, v0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 102
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v6

    if-eq v6, p1, :cond_1

    .line 103
    nop

    .line 101
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {p0, v5}, Landroid/media/MediaRecorder;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    move-result p0

    .line 106
    if-eqz p0, :cond_2

    invoke-static {v5}, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->isBluetoothDevice(Landroid/media/AudioDeviceInfo;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 107
    sget-object p1, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->startBluetoothSco()V

    .line 108
    sget-object p1, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 111
    :cond_2
    return p0

    .line 114
    :cond_3
    return v1
.end method

.method private static setAudioOutput(IZZ)V
    .locals 1

    .line 255
    sget-object v0, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->setMode(I)V

    .line 256
    if-eqz p1, :cond_0

    .line 257
    sget-object p0, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->startBluetoothSco()V

    goto :goto_0

    .line 259
    :cond_0
    sget-object p0, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 261
    :goto_0
    sget-object p0, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 262
    sget-object p0, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 264
    return-void
.end method

.method private static setAudioOutput(I)Z
    .locals 7

    .line 220
    sget-object v0, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_audioManager:Landroid/media/AudioManager;

    .line 221
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    .line 222
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 223
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v6

    if-ne v6, p0, :cond_0

    .line 224
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result p0

    const/4 v0, 0x3

    const/4 v2, 0x1

    packed-switch p0, :pswitch_data_0

    .line 246
    :pswitch_0
    return v3

    .line 228
    :pswitch_1
    invoke-static {v0, v2, v3}, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->setAudioOutput(IZZ)V

    .line 229
    return v2

    .line 235
    :pswitch_2
    invoke-static {v0, v3, v3}, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->setAudioOutput(IZZ)V

    .line 236
    return v2

    .line 231
    :pswitch_3
    invoke-static {v0, v3, v2}, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->setAudioOutput(IZZ)V

    .line 232
    return v2

    .line 241
    :pswitch_4
    const-string p0, "QtAudioDeviceManager"

    const-string v0, "Built in Earpiece may not work when Wired Headphones are connected"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-static {v1, v3, v3}, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->setAudioOutput(IZZ)V

    .line 244
    return v2

    .line 222
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 250
    :cond_1
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 1

    .line 69
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    sput-object p0, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_audioManager:Landroid/media/AudioManager;

    .line 70
    return-void
.end method

.method private static setInputMuted(Z)V
    .locals 1

    .line 120
    sget-object v0, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 121
    return-void
.end method

.method private static startSoundStreaming(II)V
    .locals 13

    .line 279
    sget-boolean v0, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_isStreaming:Z

    if-eqz v0, :cond_0

    .line 280
    invoke-static {}, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->stopSoundStreaming()V

    .line 282
    :cond_0
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v2, 0x0

    const/16 v3, 0x1f40

    const/4 v4, 0x2

    const/4 v5, 0x2

    sget v11, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_bufferSize:I

    move-object v1, v0

    move v6, v11

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecord;-><init>(IIIII)V

    sput-object v0, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_recorder:Landroid/media/AudioRecord;

    .line 284
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v7, 0x3

    const/16 v8, 0x1f40

    const/4 v9, 0x2

    const/4 v10, 0x2

    const/4 v12, 0x1

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    sput-object v0, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_streamPlayer:Landroid/media/AudioTrack;

    .line 287
    sget-object v0, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    .line 288
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 289
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 290
    sget-object v4, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_streamPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v4, v3}, Landroid/media/AudioTrack;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    goto :goto_1

    .line 291
    :cond_1
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v4

    if-ne v4, p0, :cond_2

    .line 292
    sget-object v4, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_recorder:Landroid/media/AudioRecord;

    invoke-virtual {v4, v3}, Landroid/media/AudioRecord;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    .line 288
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 296
    :cond_3
    sget-object p0, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_recorder:Landroid/media/AudioRecord;

    invoke-virtual {p0}, Landroid/media/AudioRecord;->startRecording()V

    .line 297
    const/4 p0, 0x1

    sput-boolean p0, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_isStreaming:Z

    .line 299
    new-instance p0, Ljava/lang/Thread;

    new-instance p1, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager$1;

    invoke-direct {p1}, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager$1;-><init>()V

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object p0, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_streamingThread:Ljava/lang/Thread;

    .line 305
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 306
    return-void
.end method

.method private static stopSoundStreaming()V
    .locals 2

    .line 310
    sget-boolean v0, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_isStreaming:Z

    if-nez v0, :cond_0

    .line 311
    return-void

    .line 313
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_isStreaming:Z

    .line 315
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_streamingThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 316
    sput-object v0, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_streamingThread:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    goto :goto_0

    .line 317
    :catch_0
    move-exception v1

    .line 318
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 320
    :goto_0
    sget-object v1, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_recorder:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    .line 321
    sget-object v1, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_recorder:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 322
    sget-object v1, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_streamPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    .line 323
    sput-object v0, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_streamPlayer:Landroid/media/AudioTrack;

    .line 324
    sput-object v0, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_recorder:Landroid/media/AudioRecord;

    .line 325
    return-void
.end method

.method private static streamSound()V
    .locals 4

    .line 268
    sget v0, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_bufferSize:I

    new-array v0, v0, [B

    .line 269
    :goto_0
    sget-boolean v1, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_isStreaming:Z

    if-eqz v1, :cond_0

    .line 270
    sget-object v1, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_recorder:Landroid/media/AudioRecord;

    sget v2, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_bufferSize:I

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/media/AudioRecord;->read([BII)I

    .line 271
    sget-object v1, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_streamPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->play()V

    .line 272
    sget-object v1, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_streamPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v1, v0, v3, v2}, Landroid/media/AudioTrack;->write([BII)I

    .line 273
    sget-object v1, Lorg/qtproject/qt/android/multimedia/QtAudioDeviceManager;->m_streamPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V

    goto :goto_0

    .line 275
    :cond_0
    return-void
.end method
