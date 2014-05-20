.class final Lcom/tencent/mm/ui/conversation/ac;
.super Lcom/tencent/mm/sdk/b/g;
.source "SourceFile"


# instance fields
.field final synthetic gYP:Lcom/tencent/mm/ui/conversation/ab;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/conversation/ab;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/tencent/mm/ui/conversation/ac;->gYP:Lcom/tencent/mm/ui/conversation/ab;

    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/sdk/b/e;)Z
    .locals 1
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/ac;->gYP:Lcom/tencent/mm/ui/conversation/ab;

    invoke-static {v0}, Lcom/tencent/mm/ui/conversation/ab;->a(Lcom/tencent/mm/ui/conversation/ab;)Z

    .line 166
    const/4 v0, 0x0

    return v0
.end method
