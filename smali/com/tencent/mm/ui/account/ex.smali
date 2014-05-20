.class final Lcom/tencent/mm/ui/account/ex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field final synthetic gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)V
    .locals 0
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/tencent/mm/ui/account/ex;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 353
    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->n(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
