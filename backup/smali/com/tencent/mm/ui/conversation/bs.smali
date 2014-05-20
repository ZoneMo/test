.class final Lcom/tencent/mm/ui/conversation/bs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/platformtools/az;


# instance fields
.field final synthetic gZQ:Lcom/tencent/mm/ui/conversation/br;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/conversation/br;)V
    .locals 0
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/tencent/mm/ui/conversation/bs;->gZQ:Lcom/tencent/mm/ui/conversation/br;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ok()Z
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/bs;->gZQ:Lcom/tencent/mm/ui/conversation/br;

    iget-object v0, v0, Lcom/tencent/mm/ui/conversation/br;->gZI:Lcom/tencent/mm/ui/conversation/MainUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/conversation/MainUI;->a(Lcom/tencent/mm/ui/conversation/MainUI;)V

    .line 341
    const/4 v0, 0x0

    return v0
.end method
