.class final Lcom/tencent/mm/ui/tools/hy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/v;


# instance fields
.field final synthetic hnJ:Lcom/tencent/mm/ui/tools/hx;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/hx;)V
    .locals 0
    .parameter

    .prologue
    .line 3510
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/hy;->hnJ:Lcom/tencent/mm/ui/tools/hx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bo(I)V
    .locals 1
    .parameter

    .prologue
    .line 3513
    if-nez p1, :cond_0

    .line 3514
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/hy;->hnJ:Lcom/tencent/mm/ui/tools/hx;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/hx;->a(Lcom/tencent/mm/ui/tools/hx;)V

    .line 3516
    :cond_0
    return-void
.end method
