.class public Lcom/gmail/heagoo/neweditor/Token;
.super Ljava/lang/Object;


# static fields
.field public static final COMMENT1:B = 0x1t

.field public static final COMMENT2:B = 0x2t

.field public static final COMMENT3:B = 0x3t

.field public static final COMMENT4:B = 0x4t

.field public static final DIGIT:B = 0x5t

.field public static final END:B = 0x7ft

.field public static final FUNCTION:B = 0x6t

.field public static final ID_COUNT:B = 0x13t

.field public static final INVALID:B = 0x7t

.field public static final KEYWORD1:B = 0x8t

.field public static final KEYWORD2:B = 0x9t

.field public static final KEYWORD3:B = 0xat

.field public static final KEYWORD4:B = 0xbt

.field public static final LABEL:B = 0xct

.field public static final LITERAL1:B = 0xdt

.field public static final LITERAL2:B = 0xet

.field public static final LITERAL3:B = 0xft

.field public static final LITERAL4:B = 0x10t

.field public static final MARKUP:B = 0x11t

.field public static final NULL:B = 0x0t

.field public static final OPERATOR:B = 0x12t

.field public static final TOKEN_TYPES:[Ljava/lang/String;


# instance fields
.field public id:B

.field public length:I

.field public next:Lcom/gmail/heagoo/neweditor/Token;

.field public offset:I

.field public rules:Lcom/gmail/heagoo/neweditor/v;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "NULL"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "COMMENT1"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "COMMENT2"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "COMMENT3"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "COMMENT4"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "DIGIT"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "FUNCTION"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "INVALID"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "KEYWORD1"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "KEYWORD2"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "KEYWORD3"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "KEYWORD4"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "LABEL"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "LITERAL1"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "LITERAL2"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "LITERAL3"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "LITERAL4"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "MARKUP"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "OPERATOR"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sput-object v0, Lcom/gmail/heagoo/neweditor/Token;->TOKEN_TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(BIILcom/gmail/heagoo/neweditor/v;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/gmail/heagoo/neweditor/Token;->id:B

    iput p2, p0, Lcom/gmail/heagoo/neweditor/Token;->offset:I

    iput p3, p0, Lcom/gmail/heagoo/neweditor/Token;->length:I

    iput-object p4, p0, Lcom/gmail/heagoo/neweditor/Token;->rules:Lcom/gmail/heagoo/neweditor/v;

    return-void
.end method

.method public static stringToToken(Ljava/lang/String;)B
    .registers 2

    :try_start_0
    const-class v0, Lcom/gmail/heagoo/neweditor/Token;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method public static tokenToString(B)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x7f

    if-ne p0, v0, :cond_0

    const-string p0, "END"

    return-object p0

    :cond_0
    sget-object v0, Lcom/gmail/heagoo/neweditor/Token;->TOKEN_TYPES:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, p0, Lcom/gmail/heagoo/neweditor/Token;->id:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gmail/heagoo/neweditor/Token;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gmail/heagoo/neweditor/Token;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
