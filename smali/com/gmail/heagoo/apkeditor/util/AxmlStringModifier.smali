.class public final Lcom/gmail/heagoo/apkeditor/util/AxmlStringModifier;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/versionedparcelable/d;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/util/AxmlStringModifier;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/util/AxmlStringModifier;->b:Ljava/util/Map;

    return-void
.end method
