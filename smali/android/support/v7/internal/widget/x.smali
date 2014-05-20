.class final Landroid/support/v7/internal/widget/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic od:Landroid/support/v7/internal/widget/u;

.field private final oe:Landroid/support/v7/internal/widget/w;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/widget/u;Landroid/support/v7/internal/widget/w;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Landroid/support/v7/internal/widget/x;->od:Landroid/support/v7/internal/widget/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p2, p0, Landroid/support/v7/internal/widget/x;->oe:Landroid/support/v7/internal/widget/w;

    .line 267
    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 271
    iget-object v0, p0, Landroid/support/v7/internal/widget/x;->oe:Landroid/support/v7/internal/widget/w;

    iget-object v1, p0, Landroid/support/v7/internal/widget/x;->od:Landroid/support/v7/internal/widget/u;

    invoke-interface {v0, p2, p3}, Landroid/support/v7/internal/widget/w;->h(Landroid/view/View;I)V

    .line 272
    return-void
.end method
