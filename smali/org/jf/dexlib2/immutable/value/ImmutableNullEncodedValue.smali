.class public Lorg/jf/dexlib2/immutable/value/ImmutableNullEncodedValue;
.super Lorg/jf/dexlib2/base/value/BaseNullEncodedValue;

# interfaces
.implements Lorg/jf/dexlib2/immutable/value/ImmutableEncodedValue;


# static fields
.field public static final INSTANCE:Lorg/jf/dexlib2/immutable/value/ImmutableNullEncodedValue;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/jf/dexlib2/immutable/value/ImmutableNullEncodedValue;

    invoke-direct {v0}, Lorg/jf/dexlib2/immutable/value/ImmutableNullEncodedValue;-><init>()V

    sput-object v0, Lorg/jf/dexlib2/immutable/value/ImmutableNullEncodedValue;->INSTANCE:Lorg/jf/dexlib2/immutable/value/ImmutableNullEncodedValue;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/jf/dexlib2/base/value/BaseNullEncodedValue;-><init>()V

    return-void
.end method
