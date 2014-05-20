.class final Lcom/tencent/mm/ui/conversation/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/platformtools/az;


# instance fields
.field final synthetic gZJ:Lcom/tencent/mm/ui/conversation/ai;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/conversation/ai;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/tencent/mm/ui/conversation/aj;->gZJ:Lcom/tencent/mm/ui/conversation/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ok()Z
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/aj;->gZJ:Lcom/tencent/mm/ui/conversation/ai;

    iget-object v0, v0, Lcom/tencent/mm/ui/conversation/ai;->gZI:Lcom/tencent/mm/ui/conversation/MainUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/conversation/MainUI;->a(Lcom/tencent/mm/ui/conversation/MainUI;)V

    .line 218
    const/4 v0, 0x0

    return v0
.end method
