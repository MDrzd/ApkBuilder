.class public Lcom/gmail/heagoo/apkeditor/translate/TranslateItem;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2b0bd413fd8e7e49L


# instance fields
.field public name:Ljava/lang/String;

.field public originValue:Ljava/lang/String;

.field public translatedValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/translate/TranslateItem;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/translate/TranslateItem;->originValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/translate/TranslateItem;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/translate/TranslateItem;->originValue:Ljava/lang/String;

    iput-object p3, p0, Lcom/gmail/heagoo/apkeditor/translate/TranslateItem;->translatedValue:Ljava/lang/String;

    return-void
.end method
