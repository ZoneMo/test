.class final Lcom/tencent/mm/ui/conversation/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gZI:Lcom/tencent/mm/ui/conversation/MainUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/conversation/MainUI;)V
    .locals 0
    .parameter

    .prologue
    .line 705
    iput-object p1, p0, Lcom/tencent/mm/ui/conversation/ak;->gZI:Lcom/tencent/mm/ui/conversation/MainUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 709
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/d/c/m;->hy(I)V

    .line 710
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/tencent/mm/plugin/d/c/i;->hy(I)V

    .line 711
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/tencent/mm/plugin/d/c/i;->hz(I)V

    .line 712
    return-void
.end method
