.class public Lcom/gmail/heagoo/common/p;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public b:Lcom/gmail/heagoo/neweditor/v;

.field public final c:[C

.field public final d:I

.field public final e:Lcom/gmail/heagoo/common/p;

.field public final f:B

.field public final g:[C

.field public final h:I

.field public final i:Ljava/util/regex/Pattern;

.field public final j:B

.field public final k:[C

.field public final l:[C

.field private m:Ljava/util/regex/Pattern;


# direct methods
.method private constructor <init>(ILjava/lang/String;I[CLjava/util/regex/Pattern;I[CLjava/util/regex/Pattern;Lcom/gmail/heagoo/neweditor/v;BBLjava/lang/String;)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/gmail/heagoo/common/p;->a:I

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/gmail/heagoo/common/p;->k:[C

    iput-object v0, p0, Lcom/gmail/heagoo/common/p;->l:[C

    iput p3, p0, Lcom/gmail/heagoo/common/p;->h:I

    iput-object p4, p0, Lcom/gmail/heagoo/common/p;->g:[C

    iput-object p5, p0, Lcom/gmail/heagoo/common/p;->i:Ljava/util/regex/Pattern;

    iput p6, p0, Lcom/gmail/heagoo/common/p;->d:I

    iput-object p7, p0, Lcom/gmail/heagoo/common/p;->c:[C

    iput-object p8, p0, Lcom/gmail/heagoo/common/p;->m:Ljava/util/regex/Pattern;

    iput-object p9, p0, Lcom/gmail/heagoo/common/p;->b:Lcom/gmail/heagoo/neweditor/v;

    iput-byte p10, p0, Lcom/gmail/heagoo/common/p;->j:B

    iput-byte p11, p0, Lcom/gmail/heagoo/common/p;->f:B

    if-eqz p12, :cond_1

    invoke-virtual {p12}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1

    invoke-static {p12}, Lcom/gmail/heagoo/common/p;->a(Ljava/lang/String;)Lcom/gmail/heagoo/common/p;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lcom/gmail/heagoo/common/p;->e:Lcom/gmail/heagoo/common/p;

    iget-object p2, p0, Lcom/gmail/heagoo/common/p;->b:Lcom/gmail/heagoo/neweditor/v;

    if-nez p2, :cond_2

    and-int/lit16 p1, p1, 0xff

    if-eqz p1, :cond_2

    invoke-static {p10}, Lcom/gmail/heagoo/neweditor/v;->a(B)Lcom/gmail/heagoo/neweditor/v;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/common/p;->b:Lcom/gmail/heagoo/neweditor/v;

    :cond_2
    return-void
.end method

.method private constructor <init>([CII[CLjava/util/regex/Pattern;I[CLjava/util/regex/Pattern;Lcom/gmail/heagoo/neweditor/v;BBLjava/lang/String;)V
    .registers 22

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, v0, Lcom/gmail/heagoo/common/p;->a:I

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/gmail/heagoo/common/p;->k:[C

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    array-length v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_0

    aget-char v8, v1, v7

    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [C

    iput-object v1, v0, Lcom/gmail/heagoo/common/p;->l:[C

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Character;

    add-int/lit8 v5, v6, 0x1

    iget-object v7, v0, Lcom/gmail/heagoo/common/p;->l:[C

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    aput-char v4, v7, v6

    move v6, v5

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/gmail/heagoo/common/p;->l:[C

    invoke-static {v1}, Ljava/util/Arrays;->sort([C)V

    move v1, p3

    iput v1, v0, Lcom/gmail/heagoo/common/p;->h:I

    iput-object v3, v0, Lcom/gmail/heagoo/common/p;->g:[C

    move-object v1, p5

    iput-object v1, v0, Lcom/gmail/heagoo/common/p;->i:Ljava/util/regex/Pattern;

    move v1, p6

    iput v1, v0, Lcom/gmail/heagoo/common/p;->d:I

    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/gmail/heagoo/common/p;->c:[C

    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/gmail/heagoo/common/p;->m:Ljava/util/regex/Pattern;

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/gmail/heagoo/common/p;->b:Lcom/gmail/heagoo/neweditor/v;

    move/from16 v1, p10

    iput-byte v1, v0, Lcom/gmail/heagoo/common/p;->j:B

    move/from16 v4, p11

    iput-byte v4, v0, Lcom/gmail/heagoo/common/p;->f:B

    if-eqz p12, :cond_3

    invoke-virtual/range {p12 .. p12}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-static/range {p12 .. p12}, Lcom/gmail/heagoo/common/p;->a(Ljava/lang/String;)Lcom/gmail/heagoo/common/p;

    move-result-object v3

    :cond_3
    :goto_2
    iput-object v3, v0, Lcom/gmail/heagoo/common/p;->e:Lcom/gmail/heagoo/common/p;

    iget-object v3, v0, Lcom/gmail/heagoo/common/p;->b:Lcom/gmail/heagoo/neweditor/v;

    if-nez v3, :cond_4

    and-int/lit16 v2, v2, 0xff

    if-eqz v2, :cond_4

    invoke-static/range {p10 .. p10}, Lcom/gmail/heagoo/neweditor/v;->a(B)Lcom/gmail/heagoo/neweditor/v;

    move-result-object v1

    iput-object v1, v0, Lcom/gmail/heagoo/common/p;->b:Lcom/gmail/heagoo/neweditor/v;

    :cond_4
    return-void
.end method

.method public static a(ILjava/lang/String;BB)Lcom/gmail/heagoo/common/p;
    .registers 18

    new-instance v13, Lcom/gmail/heagoo/common/p;

    const/4 v0, 0x0

    const/4 v1, 0x1

    move-object v2, p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const/16 v1, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object v0, v13

    move-object v2, v3

    move v3, p0

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-direct/range {v0 .. v12}, Lcom/gmail/heagoo/common/p;-><init>(ILjava/lang/String;I[CLjava/util/regex/Pattern;I[CLjava/util/regex/Pattern;Lcom/gmail/heagoo/neweditor/v;BBLjava/lang/String;)V

    return-object v13
.end method

.method public static a(ILjava/lang/String;ILjava/lang/String;Lcom/gmail/heagoo/neweditor/v;BBZZLjava/lang/String;)Lcom/gmail/heagoo/common/p;
    .registers 24

    new-instance v13, Lcom/gmail/heagoo/common/p;

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    const/16 v1, 0x200

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/lit8 v1, v1, 0x2

    if-eqz p8, :cond_1

    const/16 v2, 0x400

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    or-int/2addr v1, v2

    const/4 v2, 0x1

    move-object v3, p1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, v13

    move v3, p0

    move/from16 v6, p2

    move-object/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p9

    invoke-direct/range {v0 .. v12}, Lcom/gmail/heagoo/common/p;-><init>(ILjava/lang/String;I[CLjava/util/regex/Pattern;I[CLjava/util/regex/Pattern;Lcom/gmail/heagoo/neweditor/v;BBLjava/lang/String;)V

    return-object v13
.end method

.method public static a(ILjava/lang/String;Lcom/gmail/heagoo/neweditor/v;B)Lcom/gmail/heagoo/common/p;
    .registers 18

    new-instance v13, Lcom/gmail/heagoo/common/p;

    const/4 v0, 0x0

    const/4 v1, 0x1

    move-object v2, p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    move-object v0, v13

    move-object v2, v3

    move v3, p0

    move-object/from16 v9, p2

    move/from16 v10, p3

    invoke-direct/range {v0 .. v12}, Lcom/gmail/heagoo/common/p;-><init>(ILjava/lang/String;I[CLjava/util/regex/Pattern;I[CLjava/util/regex/Pattern;Lcom/gmail/heagoo/neweditor/v;BBLjava/lang/String;)V

    return-object v13
.end method

.method public static a(ILjava/lang/String;Lcom/gmail/heagoo/neweditor/v;BB)Lcom/gmail/heagoo/common/p;
    .registers 19

    new-instance v13, Lcom/gmail/heagoo/common/p;

    const/4 v0, 0x0

    const/4 v1, 0x1

    move-object v2, p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const/16 v1, 0x210

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object v0, v13

    move-object v2, v3

    move v3, p0

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-direct/range {v0 .. v12}, Lcom/gmail/heagoo/common/p;-><init>(ILjava/lang/String;I[CLjava/util/regex/Pattern;I[CLjava/util/regex/Pattern;Lcom/gmail/heagoo/neweditor/v;BBLjava/lang/String;)V

    return-object v13
.end method

.method public static a(I[CLjava/lang/String;ILjava/lang/String;Lcom/gmail/heagoo/neweditor/v;BBZZZLjava/lang/String;Z)Lcom/gmail/heagoo/common/p;
    .registers 32

    const/4 v1, 0x0

    if-eqz p8, :cond_0

    const/16 v2, 0x200

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    or-int/lit16 v2, v2, 0x2002

    if-eqz p9, :cond_1

    const/16 v3, 0x400

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    or-int/2addr v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz p12, :cond_3

    or-int/lit16 v2, v2, 0x4000

    if-eqz p10, :cond_2

    move-object/from16 v5, p4

    const/4 v6, 0x2

    goto :goto_2

    :cond_2
    move-object/from16 v5, p4

    const/4 v6, 0x0

    :goto_2
    invoke-static {v5, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    move v8, v2

    move-object v13, v4

    move-object v14, v5

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    move v8, v2

    move-object v14, v4

    move-object v13, v5

    :goto_3
    new-instance v2, Lcom/gmail/heagoo/common/p;

    const/4 v10, 0x0

    if-eqz p10, :cond_4

    move-object/from16 v0, p2

    goto :goto_4

    :cond_4
    move-object/from16 v0, p2

    const/4 v3, 0x0

    :goto_4
    invoke-static {v0, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v11

    move-object v6, v2

    move-object/from16 v7, p1

    move/from16 v9, p0

    move/from16 v12, p3

    move-object/from16 v15, p5

    move/from16 v16, p6

    move/from16 v17, p7

    move-object/from16 v18, p11

    invoke-direct/range {v6 .. v18}, Lcom/gmail/heagoo/common/p;-><init>([CII[CLjava/util/regex/Pattern;I[CLjava/util/regex/Pattern;Lcom/gmail/heagoo/neweditor/v;BBLjava/lang/String;)V

    return-object v2
.end method

.method public static a(I[CLjava/lang/String;Lcom/gmail/heagoo/neweditor/v;BBZ)Lcom/gmail/heagoo/common/p;
    .registers 21

    new-instance v13, Lcom/gmail/heagoo/common/p;

    if-eqz p6, :cond_0

    const/4 v0, 0x2

    move-object/from16 v0, p2

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object/from16 v0, p2

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/16 v2, 0x2210

    const/4 v4, 0x0

    move-object v0, v13

    move-object v1, p1

    move v3, p0

    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-direct/range {v0 .. v12}, Lcom/gmail/heagoo/common/p;-><init>([CII[CLjava/util/regex/Pattern;I[CLjava/util/regex/Pattern;Lcom/gmail/heagoo/neweditor/v;BBLjava/lang/String;)V

    return-object v13
.end method

.method public static a(I[CLjava/lang/String;Lcom/gmail/heagoo/neweditor/v;BZ)Lcom/gmail/heagoo/common/p;
    .registers 20

    new-instance v13, Lcom/gmail/heagoo/common/p;

    if-eqz p5, :cond_0

    const/4 v0, 0x2

    move-object/from16 v0, p2

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object/from16 v0, p2

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/16 v2, 0x2000

    const/4 v4, 0x0

    move-object v0, v13

    move-object v1, p1

    move v3, p0

    move-object/from16 v9, p3

    move/from16 v10, p4

    invoke-direct/range {v0 .. v12}, Lcom/gmail/heagoo/common/p;-><init>([CII[CLjava/util/regex/Pattern;I[CLjava/util/regex/Pattern;Lcom/gmail/heagoo/neweditor/v;BBLjava/lang/String;)V

    return-object v13
.end method

.method public static a(Ljava/lang/String;)Lcom/gmail/heagoo/common/p;
    .registers 15

    new-instance v13, Lcom/gmail/heagoo/common/p;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const/16 v1, 0x800

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/gmail/heagoo/common/p;-><init>(ILjava/lang/String;I[CLjava/util/regex/Pattern;I[CLjava/util/regex/Pattern;Lcom/gmail/heagoo/neweditor/v;BBLjava/lang/String;)V

    return-object v13
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Lcom/gmail/heagoo/neweditor/v;BBZZZLjava/lang/String;Z)Lcom/gmail/heagoo/common/p;
    .registers 32

    const/4 v1, 0x0

    if-eqz p8, :cond_0

    const/16 v2, 0x200

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    or-int/lit16 v2, v2, 0x2002

    if-eqz p9, :cond_1

    const/16 v3, 0x400

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    or-int/2addr v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz p12, :cond_3

    or-int/lit16 v2, v2, 0x4000

    if-eqz p10, :cond_2

    move-object/from16 v5, p4

    const/4 v6, 0x2

    goto :goto_2

    :cond_2
    move-object/from16 v5, p4

    const/4 v6, 0x0

    :goto_2
    invoke-static {v5, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    move v7, v2

    move-object v13, v4

    move-object v14, v5

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    move v7, v2

    move-object v14, v4

    move-object v13, v5

    :goto_3
    new-instance v2, Lcom/gmail/heagoo/common/p;

    const/4 v10, 0x0

    if-eqz p10, :cond_4

    move-object/from16 v0, p2

    goto :goto_4

    :cond_4
    move-object/from16 v0, p2

    const/4 v3, 0x0

    :goto_4
    invoke-static {v0, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v11

    move-object v6, v2

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v12, p3

    move-object/from16 v15, p5

    move/from16 v16, p6

    move/from16 v17, p7

    move-object/from16 v18, p11

    invoke-direct/range {v6 .. v18}, Lcom/gmail/heagoo/common/p;-><init>(ILjava/lang/String;I[CLjava/util/regex/Pattern;I[CLjava/util/regex/Pattern;Lcom/gmail/heagoo/neweditor/v;BBLjava/lang/String;)V

    return-object v2
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;Lcom/gmail/heagoo/neweditor/v;BBZ)Lcom/gmail/heagoo/common/p;
    .registers 21

    new-instance v13, Lcom/gmail/heagoo/common/p;

    if-eqz p6, :cond_0

    const/4 v0, 0x2

    move-object/from16 v0, p2

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object/from16 v0, p2

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/16 v1, 0x2210

    const/4 v4, 0x0

    move-object v0, v13

    move-object v2, p0

    move v3, p1

    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-direct/range {v0 .. v12}, Lcom/gmail/heagoo/common/p;-><init>(ILjava/lang/String;I[CLjava/util/regex/Pattern;I[CLjava/util/regex/Pattern;Lcom/gmail/heagoo/neweditor/v;BBLjava/lang/String;)V

    return-object v13
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;Lcom/gmail/heagoo/neweditor/v;BZ)Lcom/gmail/heagoo/common/p;
    .registers 20

    new-instance v13, Lcom/gmail/heagoo/common/p;

    if-eqz p5, :cond_0

    const/4 v0, 0x2

    move-object/from16 v0, p2

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object/from16 v0, p2

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/16 v1, 0x2000

    const/4 v4, 0x0

    move-object v0, v13

    move-object v2, p0

    move v3, p1

    move-object/from16 v9, p3

    move/from16 v10, p4

    invoke-direct/range {v0 .. v12}, Lcom/gmail/heagoo/common/p;-><init>(ILjava/lang/String;I[CLjava/util/regex/Pattern;I[CLjava/util/regex/Pattern;Lcom/gmail/heagoo/neweditor/v;BBLjava/lang/String;)V

    return-object v13
.end method

.method public static a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcom/a/a/g;->a(Ljava/io/Closeable;)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0}, Lcom/a/a/g;->a(Ljava/io/Closeable;)V

    const/4 p0, 0x0

    return p0

    :goto_1
    invoke-static {v0}, Lcom/a/a/g;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static b(ILjava/lang/String;BB)Lcom/gmail/heagoo/common/p;
    .registers 18

    new-instance v13, Lcom/gmail/heagoo/common/p;

    const/4 v0, 0x0

    const/4 v1, 0x1

    move-object v2, p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const/4 v1, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object v0, v13

    move-object v2, v3

    move v3, p0

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-direct/range {v0 .. v12}, Lcom/gmail/heagoo/common/p;-><init>(ILjava/lang/String;I[CLjava/util/regex/Pattern;I[CLjava/util/regex/Pattern;Lcom/gmail/heagoo/neweditor/v;BBLjava/lang/String;)V

    return-object v13
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gmail/heagoo/common/p;->a:I

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x2

    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_1

    const/16 v5, 0x10

    if-eq v1, v5, :cond_0

    const-string v1, "UNKNOWN"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v1, "EOL_SPAN"

    goto :goto_0

    :cond_1
    const-string v1, "MARK_FOLLOWING"

    goto :goto_0

    :cond_2
    const-string v1, "MARK_PREVIOUS"

    goto :goto_0

    :cond_3
    const-string v1, "SPAN"

    goto :goto_0

    :cond_4
    const-string v1, "SEQ"

    goto :goto_0

    :goto_1
    iget v1, p0, Lcom/gmail/heagoo/common/p;->a:I

    const v5, 0xff00

    and-int/2addr v1, v5

    const-string v5, "[matchType="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v5, p0, Lcom/gmail/heagoo/common/p;->f:B

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    const-string v5, "MATCH_TYPE_CONTEXT"

    goto :goto_2

    :cond_5
    iget-byte v5, p0, Lcom/gmail/heagoo/common/p;->f:B

    const/4 v6, -0x2

    if-ne v5, v6, :cond_6

    const-string v5, "MATCH_TYPE_RULE"

    goto :goto_2

    :cond_6
    iget-byte v5, p0, Lcom/gmail/heagoo/common/p;->f:B

    invoke-static {v5}, Lcom/gmail/heagoo/neweditor/Token;->tokenToString(B)Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",NO_LINE_BREAK="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v5, v1, 0x200

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",NO_WORD_BREAK="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v5, v1, 0x400

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",IS_ESCAPE="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v5, v1, 0x800

    if-eqz v5, :cond_9

    const/4 v5, 0x1

    goto :goto_5

    :cond_9
    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",REGEXP="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_6

    :cond_a
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "],upHashChar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v5, p0, Lcom/gmail/heagoo/common/p;->k:[C

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",upHashChars="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gmail/heagoo/common/p;->l:[C

    invoke-static {v1}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",startPosMatch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[AT_LINE_START="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gmail/heagoo/common/p;->h:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_7

    :cond_b
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",AT_WHITESPACE_END="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gmail/heagoo/common/p;->h:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_8

    :cond_c
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",AT_WORD_START="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gmail/heagoo/common/p;->h:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_9

    :cond_d
    const/4 v1, 0x0

    :goto_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "],start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gmail/heagoo/common/p;->g:[C

    const/4 v5, 0x0

    if-nez v1, :cond_e

    move-object v1, v5

    goto :goto_a

    :cond_e
    iget-object v1, p0, Lcom/gmail/heagoo/common/p;->g:[C

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    :goto_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",startRegexp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gmail/heagoo/common/p;->i:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",endPosMatch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[AT_LINE_START="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gmail/heagoo/common/p;->d:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_b

    :cond_f
    const/4 v1, 0x0

    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",AT_WHITESPACE_END="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gmail/heagoo/common/p;->d:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_c

    :cond_10
    const/4 v1, 0x0

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",AT_WORD_START="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gmail/heagoo/common/p;->d:I

    and-int/2addr v1, v2

    if-nez v1, :cond_11

    goto :goto_d

    :cond_11
    const/4 v6, 0x1

    :goto_d
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "],end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gmail/heagoo/common/p;->c:[C

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/gmail/heagoo/common/p;->c:[C

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v5

    :cond_12
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",delegate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gmail/heagoo/common/p;->b:Lcom/gmail/heagoo/neweditor/v;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",escapeRule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gmail/heagoo/common/p;->e:Lcom/gmail/heagoo/common/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/gmail/heagoo/common/p;->j:B

    invoke-static {v1}, Lcom/gmail/heagoo/neweditor/Token;->tokenToString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
