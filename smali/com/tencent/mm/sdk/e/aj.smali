.class final Lcom/tencent/mm/sdk/e/aj;
.super Lcom/tencent/mm/sdk/e/am;
.source "SourceFile"


# instance fields
.field final synthetic gfF:Lcom/tencent/mm/sdk/e/ai;


# direct methods
.method constructor <init>(Lcom/tencent/mm/sdk/e/ai;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/tencent/mm/sdk/e/aj;->gfF:Lcom/tencent/mm/sdk/e/ai;

    invoke-direct {p0}, Lcom/tencent/mm/sdk/e/am;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic i(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    check-cast p1, Lcom/tencent/mm/sdk/e/al;

    check-cast p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/sdk/e/aj;->gfF:Lcom/tencent/mm/sdk/e/ai;

    invoke-interface {p1, p2}, Lcom/tencent/mm/sdk/e/al;->ca(Ljava/lang/String;)V

    return-void
.end method
