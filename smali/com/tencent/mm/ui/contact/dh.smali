.class final Lcom/tencent/mm/ui/contact/dh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/bd;


# instance fields
.field final synthetic gVn:Lcom/tencent/mm/ui/contact/SelectContactUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/SelectContactUI;)V
    .locals 0
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/dh;->gVn:Lcom/tencent/mm/ui/contact/SelectContactUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final FW()V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/dh;->gVn:Lcom/tencent/mm/ui/contact/SelectContactUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/dh;->gVn:Lcom/tencent/mm/ui/contact/SelectContactUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/contact/SelectContactUI;->b(Lcom/tencent/mm/ui/contact/SelectContactUI;)Lcom/tencent/mm/ui/contact/db;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/ui/contact/db;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/contact/SelectContactUI;->a(Lcom/tencent/mm/ui/contact/SelectContactUI;I)V

    .line 374
    return-void
.end method

.method public final FX()V
    .locals 0

    .prologue
    .line 379
    return-void
.end method
