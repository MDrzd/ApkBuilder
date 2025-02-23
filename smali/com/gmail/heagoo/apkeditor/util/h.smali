.class final Lcom/gmail/heagoo/apkeditor/util/h;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:Ljava/util/List;


# direct methods
.method private constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/gmail/heagoo/apkeditor/util/h;->a:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/util/h;->b:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(IB)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/gmail/heagoo/apkeditor/util/h;-><init>(I)V

    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/util/h;Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/util/h;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
