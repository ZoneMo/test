.class final Landroid/support/v4/view/i;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# instance fields
.field final synthetic da:Landroid/support/v4/view/j;


# direct methods
.method constructor <init>(Landroid/support/v4/view/j;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Landroid/support/v4/view/i;->da:Landroid/support/v4/view/j;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Landroid/support/v4/view/i;->da:Landroid/support/v4/view/j;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/j;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Landroid/support/v4/view/i;->da:Landroid/support/v4/view/j;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/j;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 55
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Landroid/support/v4/view/i;->da:Landroid/support/v4/view/j;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/j;->b(Landroid/view/View;Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Landroid/support/v4/view/i;->da:Landroid/support/v4/view/j;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/j;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 65
    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Landroid/support/v4/view/i;->da:Landroid/support/v4/view/j;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/j;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Landroid/support/v4/view/i;->da:Landroid/support/v4/view/j;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/j;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 76
    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Landroid/support/v4/view/i;->da:Landroid/support/v4/view/j;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/j;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 81
    return-void
.end method
