.class final Lcom/tencent/mm/ui/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/i/c;


# instance fields
.field final synthetic gmk:Lcom/tencent/mm/ui/LauncherUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/LauncherUI;)V
    .locals 0
    .parameter

    .prologue
    .line 934
    iput-object p1, p0, Lcom/tencent/mm/ui/ap;->gmk:Lcom/tencent/mm/ui/LauncherUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ce(I)V
    .locals 1
    .parameter

    .prologue
    .line 939
    const v0, 0x40001

    if-eq p1, v0, :cond_0

    const v0, 0x40004

    if-ne p1, v0, :cond_1

    .line 940
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/ap;->gmk:Lcom/tencent/mm/ui/LauncherUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/LauncherUI;->f(Lcom/tencent/mm/ui/LauncherUI;)V

    .line 942
    :cond_1
    const v0, 0x40003

    if-eq p1, v0, :cond_2

    const v0, 0x40005

    if-ne p1, v0, :cond_3

    .line 943
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/ap;->gmk:Lcom/tencent/mm/ui/LauncherUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/LauncherUI;->aEu()V

    .line 945
    :cond_3
    return-void
.end method

.method public final cf(I)V
    .locals 1
    .parameter

    .prologue
    .line 949
    const v0, 0x41001

    if-ne p1, v0, :cond_0

    .line 950
    iget-object v0, p0, Lcom/tencent/mm/ui/ap;->gmk:Lcom/tencent/mm/ui/LauncherUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/LauncherUI;->f(Lcom/tencent/mm/ui/LauncherUI;)V

    .line 953
    :cond_0
    const v0, 0x41004

    if-ne p1, v0, :cond_1

    .line 954
    iget-object v0, p0, Lcom/tencent/mm/ui/ap;->gmk:Lcom/tencent/mm/ui/LauncherUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/LauncherUI;->aEu()V

    .line 956
    :cond_1
    return-void
.end method
