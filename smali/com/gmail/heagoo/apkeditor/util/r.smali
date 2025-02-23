.class final Lcom/gmail/heagoo/apkeditor/util/r;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/util/r;->a:Ljava/lang/String;

    if-lez p2, :cond_0

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput p2, p0, Lcom/gmail/heagoo/apkeditor/util/r;->b:I

    return-void
.end method
