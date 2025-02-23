.class public Lb/b/b/b/a;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/gmail/heagoo/httpserver/h;

.field public final b:Lb/b/c/a/d;

.field public final c:Ljava/io/PrintStream;

.field public final d:Ljava/io/PrintStream;

.field final e:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>()V
    .registers 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {p0, v0, v1}, Lb/b/b/b/a;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/gmail/heagoo/httpserver/h;

    invoke-direct {v0}, Lcom/gmail/heagoo/httpserver/h;-><init>()V

    iput-object v0, p0, Lb/b/b/b/a;->a:Lcom/gmail/heagoo/httpserver/h;

    new-instance v0, Lb/b/c/a/d;

    invoke-direct {v0}, Lb/b/c/a/d;-><init>()V

    iput-object v0, p0, Lb/b/b/b/a;->b:Lb/b/c/a/d;

    new-instance v0, Ljava/io/PrintStream;

    new-instance v1, Lb/b/b/b/b;

    invoke-direct {v1, p0}, Lb/b/b/b/b;-><init>(Lb/b/b/b/a;)V

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lb/b/b/b/a;->e:Ljava/io/PrintStream;

    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lb/b/b/b/a;->c:Ljava/io/PrintStream;

    new-instance p1, Ljava/io/PrintStream;

    invoke-direct {p1, p2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lb/b/b/b/a;->d:Ljava/io/PrintStream;

    return-void
.end method
