.class final Lcom/tencent/mm/ui/bo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/bb;


# instance fields
.field final synthetic gnB:Lcom/tencent/mm/ui/MMActivity;

.field private final gnE:I


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/MMActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/tencent/mm/ui/bo;->gnB:Lcom/tencent/mm/ui/MMActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    const/16 v0, 0x32

    iput v0, p0, Lcom/tencent/mm/ui/bo;->gnE:I

    return-void
.end method


# virtual methods
.method public final onSizeChanged(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x32

    .line 417
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-ne p1, p3, :cond_0

    .line 418
    if-le p2, p4, :cond_1

    sub-int v0, p2, p4

    if-le v0, v1, :cond_1

    .line 419
    iget-object v0, p0, Lcom/tencent/mm/ui/bo;->gnB:Lcom/tencent/mm/ui/MMActivity;

    invoke-static {v0}, Lcom/tencent/mm/ui/MMActivity;->h(Lcom/tencent/mm/ui/MMActivity;)V

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    if-le p4, p2, :cond_0

    sub-int v0, p4, p2

    if-le v0, v1, :cond_0

    .line 421
    iget-object v0, p0, Lcom/tencent/mm/ui/bo;->gnB:Lcom/tencent/mm/ui/MMActivity;

    invoke-static {v0}, Lcom/tencent/mm/ui/MMActivity;->i(Lcom/tencent/mm/ui/MMActivity;)V

    goto :goto_0
.end method
