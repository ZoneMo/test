.class final Lcom/tencent/mm/ui/contact/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/k;


# instance fields
.field final synthetic gSV:Lcom/tencent/mm/ui/contact/m;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/m;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/y;->gSV:Lcom/tencent/mm/ui/contact/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final FW()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/y;->gSV:Lcom/tencent/mm/ui/contact/m;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/y;->gSV:Lcom/tencent/mm/ui/contact/m;

    invoke-static {v1}, Lcom/tencent/mm/ui/contact/m;->a(Lcom/tencent/mm/ui/contact/m;)Lcom/tencent/mm/ui/contact/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/ui/contact/i;->getCount()I

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/m;->b(Lcom/tencent/mm/ui/contact/m;)V

    .line 241
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/y;->gSV:Lcom/tencent/mm/ui/contact/m;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/m;->a(Lcom/tencent/mm/ui/contact/m;)Lcom/tencent/mm/ui/contact/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/i;->aKp()V

    .line 242
    return-void
.end method

.method public final FX()V
    .locals 0

    .prologue
    .line 247
    return-void
.end method
