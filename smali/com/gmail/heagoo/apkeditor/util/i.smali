.class final Lcom/gmail/heagoo/apkeditor/util/i;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/gmail/heagoo/apkeditor/util/i;->a:I

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/util/i;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/gmail/heagoo/apkeditor/util/i;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;B)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/gmail/heagoo/apkeditor/util/i;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
