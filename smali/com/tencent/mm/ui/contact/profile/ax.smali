.class final Lcom/tencent/mm/ui/contact/profile/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/model/ca;


# instance fields
.field final synthetic cRv:Lcom/tencent/mm/ui/base/ch;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/base/ch;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/profile/ax;->cRv:Lcom/tencent/mm/ui/base/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uW()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ax;->cRv:Lcom/tencent/mm/ui/base/ch;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/profile/ax;->cRv:Lcom/tencent/mm/ui/base/ch;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ch;->dismiss()V

    .line 266
    :cond_0
    return-void
.end method

.method public final uX()Z
    .locals 1

    .prologue
    .line 258
    invoke-static {}, Lcom/tencent/mm/ui/contact/profile/aq;->yE()Z

    move-result v0

    return v0
.end method
