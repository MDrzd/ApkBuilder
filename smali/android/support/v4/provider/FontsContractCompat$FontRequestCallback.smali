.class public Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;
.super Ljava/lang/Object;


# static fields
.field public static final FAIL_REASON_FONT_LOAD_ERROR:I = -0x3

.field public static final FAIL_REASON_FONT_NOT_FOUND:I = 0x1

.field public static final FAIL_REASON_FONT_UNAVAILABLE:I = 0x2

.field public static final FAIL_REASON_MALFORMED_QUERY:I = 0x3

.field public static final FAIL_REASON_PROVIDER_NOT_FOUND:I = -0x1

.field public static final FAIL_REASON_SECURITY_VIOLATION:I = -0x4

.field public static final FAIL_REASON_WRONG_CERTIFICATES:I = -0x2

.field public static final RESULT_OK:I
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTypefaceRequestFailed(I)V
    .registers 2

    return-void
.end method

.method public onTypefaceRetrieved(Landroid/graphics/Typeface;)V
    .registers 2

    return-void
.end method
