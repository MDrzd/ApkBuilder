.class final Lcom/gmail/heagoo/apkeditor/cj;
.super Landroid/util/LruCache;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/apkeditor/ci;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/ci;I)V
    .registers 3

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/cj;->a:Lcom/gmail/heagoo/apkeditor/ci;

    const/16 p1, 0x40

    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    check-cast p3, Lcom/gmail/heagoo/apkeditor/cl;

    return-void
.end method
