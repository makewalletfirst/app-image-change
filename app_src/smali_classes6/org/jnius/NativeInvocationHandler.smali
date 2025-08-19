.class public Lorg/jnius/NativeInvocationHandler;
.super Ljava/lang/Object;
.source "NativeInvocationHandler.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field static DEBUG:Z


# instance fields
.field private ptr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    const/4 v0, 0x0

    sput-boolean v0, Lorg/jnius/NativeInvocationHandler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .param p1, "ptr"    # J

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide p1, p0, Lorg/jnius/NativeInvocationHandler;->ptr:J

    .line 11
    return-void
.end method


# virtual methods
.method public getPythonObjectPointer()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lorg/jnius/NativeInvocationHandler;->ptr:J

    return-wide v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 14
    sget-boolean v0, Lorg/jnius/NativeInvocationHandler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+ java:invoke(<proxy>, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, "message":Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 20
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 21
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    .line 24
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/jnius/NativeInvocationHandler;->invoke0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    .local v0, "ret":Ljava/lang/Object;
    sget-boolean v1, Lorg/jnius/NativeInvocationHandler;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 27
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "+ java:invoke returned: "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 28
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 31
    :cond_1
    return-object v0
.end method

.method native invoke0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.end method
