.class public Lcom/gmail/heagoo/httpserver/g;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/gmail/heagoo/httpserver/g;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gmail/heagoo/httpserver/g;->b:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/gmail/heagoo/httpserver/g;->c:Z

    iput-boolean v0, p0, Lcom/gmail/heagoo/httpserver/g;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gmail/heagoo/httpserver/g;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/gmail/heagoo/httpserver/g;->f:Ljava/lang/String;

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iput-object v0, p0, Lcom/gmail/heagoo/httpserver/g;->h:Ljava/io/PrintStream;

    return-void
.end method
