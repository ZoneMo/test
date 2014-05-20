.class final Lcom/tencent/mm/ui/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/n;


# instance fields
.field final synthetic gkP:Lcom/tencent/mm/ui/h;

.field final synthetic gkQ:Lcom/tencent/mm/ui/m;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/h;Lcom/tencent/mm/ui/m;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 801
    iput-object p1, p0, Lcom/tencent/mm/ui/j;->gkP:Lcom/tencent/mm/ui/h;

    iput-object p2, p0, Lcom/tencent/mm/ui/j;->gkQ:Lcom/tencent/mm/ui/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final aEe()V
    .locals 2

    .prologue
    .line 805
    iget-object v0, p0, Lcom/tencent/mm/ui/j;->gkP:Lcom/tencent/mm/ui/h;

    iget-object v1, p0, Lcom/tencent/mm/ui/j;->gkQ:Lcom/tencent/mm/ui/m;

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/h;->a(Lcom/tencent/mm/ui/h;Lcom/tencent/mm/ui/m;)V

    .line 806
    return-void
.end method
